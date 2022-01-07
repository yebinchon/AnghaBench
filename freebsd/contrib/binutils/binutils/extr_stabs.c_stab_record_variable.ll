; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_record_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_record_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i64, %struct.stab_pending_var*, i64, i32 }
%struct.stab_pending_var = type { i8*, i32, i32, i32, %struct.stab_pending_var* }

@DEBUG_GLOBAL = common dso_local global i32 0, align 4
@DEBUG_STATIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*, i8*, i32, i32, i32)* @stab_record_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_record_variable(i8* %0, %struct.stab_handle* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stab_handle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stab_pending_var*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @DEBUG_GLOBAL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %37, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @DEBUG_STATIC, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %24 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %29 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %34 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %22, %18, %6
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @debug_record_variable(i8* %38, i8* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %70

44:                                               ; preds = %32, %27
  %45 = call i64 @xmalloc(i32 32)
  %46 = inttoptr i64 %45 to %struct.stab_pending_var*
  store %struct.stab_pending_var* %46, %struct.stab_pending_var** %14, align 8
  %47 = load %struct.stab_pending_var*, %struct.stab_pending_var** %14, align 8
  %48 = call i32 @memset(%struct.stab_pending_var* %47, i32 0, i32 32)
  %49 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %50 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %49, i32 0, i32 1
  %51 = load %struct.stab_pending_var*, %struct.stab_pending_var** %50, align 8
  %52 = load %struct.stab_pending_var*, %struct.stab_pending_var** %14, align 8
  %53 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %52, i32 0, i32 4
  store %struct.stab_pending_var* %51, %struct.stab_pending_var** %53, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.stab_pending_var*, %struct.stab_pending_var** %14, align 8
  %56 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.stab_pending_var*, %struct.stab_pending_var** %14, align 8
  %59 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.stab_pending_var*, %struct.stab_pending_var** %14, align 8
  %62 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.stab_pending_var*, %struct.stab_pending_var** %14, align 8
  %65 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.stab_pending_var*, %struct.stab_pending_var** %14, align 8
  %67 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %68 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %67, i32 0, i32 1
  store %struct.stab_pending_var* %66, %struct.stab_pending_var** %68, align 8
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %44, %37
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @debug_record_variable(i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.stab_pending_var*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
