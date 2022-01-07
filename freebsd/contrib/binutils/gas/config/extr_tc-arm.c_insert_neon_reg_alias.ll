; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_insert_neon_reg_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_insert_neon_reg_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_typed_alias = type { i32 }
%struct.reg_entry = type { %struct.neon_typed_alias* }

@.str = private unnamed_addr constant [32 x i8] c"attempt to redefine typed alias\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.neon_typed_alias*)* @insert_neon_reg_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_neon_reg_alias(i8* %0, i32 %1, i32 %2, %struct.neon_typed_alias* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.neon_typed_alias*, align 8
  %9 = alloca %struct.reg_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.neon_typed_alias* %3, %struct.neon_typed_alias** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.reg_entry* @insert_reg_alias(i8* %10, i32 %11, i32 %12)
  store %struct.reg_entry* %13, %struct.reg_entry** %9, align 8
  %14 = load %struct.reg_entry*, %struct.reg_entry** %9, align 8
  %15 = icmp ne %struct.reg_entry* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @first_error(i32 %17)
  br label %32

19:                                               ; preds = %4
  %20 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %8, align 8
  %21 = icmp ne %struct.neon_typed_alias* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = call %struct.neon_typed_alias* @xmalloc(i32 4)
  %24 = load %struct.reg_entry*, %struct.reg_entry** %9, align 8
  %25 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %24, i32 0, i32 0
  store %struct.neon_typed_alias* %23, %struct.neon_typed_alias** %25, align 8
  %26 = load %struct.reg_entry*, %struct.reg_entry** %9, align 8
  %27 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %26, i32 0, i32 0
  %28 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %27, align 8
  %29 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %8, align 8
  %30 = bitcast %struct.neon_typed_alias* %28 to i8*
  %31 = bitcast %struct.neon_typed_alias* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %16, %22, %19
  ret void
}

declare dso_local %struct.reg_entry* @insert_reg_alias(i8*, i32, i32) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.neon_typed_alias* @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
