; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_append_dynamic_list_cpp_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_append_dynamic_list_cpp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_version_expr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"operator new*\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"operator delete*\00", align 1
@__const.lang_append_dynamic_list_cpp_new.symbols = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_append_dynamic_list_cpp_new() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca %struct.bfd_elf_version_expr*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast [2 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x i8*]* @__const.lang_append_dynamic_list_cpp_new.symbols to i8*), i64 16, i1 false)
  store %struct.bfd_elf_version_expr* null, %struct.bfd_elf_version_expr** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %0
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %8 = call i32 @ARRAY_SIZE(i8** %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = call %struct.bfd_elf_version_expr* @lang_new_vers_pattern(%struct.bfd_elf_version_expr* %11, i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  store %struct.bfd_elf_version_expr* %17, %struct.bfd_elf_version_expr** %2, align 8
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %5

21:                                               ; preds = %5
  %22 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %2, align 8
  %23 = call i32 @lang_append_dynamic_list(%struct.bfd_elf_version_expr* %22)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local %struct.bfd_elf_version_expr* @lang_new_vers_pattern(%struct.bfd_elf_version_expr*, i8*, i8*, i32) #2

declare dso_local i32 @lang_append_dynamic_list(%struct.bfd_elf_version_expr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
