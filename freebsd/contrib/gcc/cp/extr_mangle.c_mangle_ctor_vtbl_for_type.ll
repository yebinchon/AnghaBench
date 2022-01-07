; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_mangle_ctor_vtbl_for_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_mangle_ctor_vtbl_for_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@DEBUG_MANGLE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"mangle_ctor_vtbl_for_type = %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mangle_ctor_vtbl_for_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @start_mangling(i32 %6, i32 1)
  %8 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @write_type(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @BINFO_OFFSET(i32 %12)
  %14 = call i32 @write_integer_cst(i32 %13)
  %15 = call i32 @write_char(i8 signext 95)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BINFO_TYPE(i32 %16)
  %18 = call i32 @write_type(i32 %17)
  %19 = call i8* @finish_mangling(i32 0)
  store i8* %19, i8** %5, align 8
  %20 = load i64, i64* @DEBUG_MANGLE, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @get_identifier_nocopy(i8* %27)
  ret i32 %28
}

declare dso_local i32 @start_mangling(i32, i32) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i32 @write_type(i32) #1

declare dso_local i32 @write_integer_cst(i32) #1

declare dso_local i32 @BINFO_OFFSET(i32) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i8* @finish_mangling(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @get_identifier_nocopy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
