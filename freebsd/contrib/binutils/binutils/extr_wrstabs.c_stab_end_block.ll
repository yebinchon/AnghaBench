; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_end_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_end_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, i64, i64, i64 }

@N_LBRAC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@N_RBRAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @stab_end_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_end_block(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stab_write_handle*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %8, %struct.stab_write_handle** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %11 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %17 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %20 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, -1
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %25 = load i32, i32* @N_LBRAC, align 4
  %26 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %27 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @stab_write_symbol(%struct.stab_write_handle* %24, i32 %25, i32 0, i64 %28, i8* null)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %23
  %34 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %35 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %34, i32 0, i32 1
  store i64 -1, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %18
  %37 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %38 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %44 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %48 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %36
  %54 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %55 = load i32, i32* @N_RBRAC, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %58 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = call i32 @stab_write_symbol(%struct.stab_write_handle* %54, i32 %55, i32 0, i64 %60, i8* null)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %51, %31
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i32, i64, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
