; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_start_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_start_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s:%c%s\00", align 1
@N_FUN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @stab_start_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_start_function(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stab_write_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %12, %struct.stab_write_handle** %8, align 8
  %13 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %14 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %19 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, -1
  br label %22

22:                                               ; preds = %17, %3
  %23 = phi i1 [ false, %3 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %27 = call i8* @stab_pop_type(%struct.stab_write_handle* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = add nsw i64 %29, %31
  %33 = add nsw i64 %32, 3
  %34 = call i64 @xmalloc(i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 70, i32 102
  %42 = sitofp i32 %41 to float
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %37, float %42, i8* %43)
  %45 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %46 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %49 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %51 = load i32, i32* @N_FUN, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @stab_write_symbol(%struct.stab_write_handle* %50, i32 %51, i32 0, i32 0, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %22
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %4, align 8
  br label %61

57:                                               ; preds = %22
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %57, %55
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, float, i8*) #1

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
