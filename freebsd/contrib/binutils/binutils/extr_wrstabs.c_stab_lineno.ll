; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_lineno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i8*, i64, i64 }

@N_SOL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@N_SLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64)* @stab_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_lineno(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stab_write_handle*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %12, %struct.stab_write_handle** %10, align 8
  %13 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %14 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %21 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %27 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %31 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %29, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %37 = load i32, i32* @N_SOL, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @stab_write_symbol(%struct.stab_write_handle* %36, i32 %37, i64 0, i64 %38, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %58

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %47 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %28
  %49 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %50 = load i32, i32* @N_SLINE, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %54 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = call i32 @stab_write_symbol(%struct.stab_write_handle* %49, i32 %50, i64 %51, i64 %56, i8* null)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %48, %42
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
