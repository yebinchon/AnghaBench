; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_start_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_start_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i32, i32, i32, i64, i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@N_LBRAC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @stab_start_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_start_block(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stab_write_handle*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %8, %struct.stab_write_handle** %6, align 8
  %9 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %10 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %15 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %19 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %22 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = add nsw i64 %25, 8
  %27 = call i32 @bfd_put_32(i32 %16, i64 %17, i64 %26)
  %28 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %29 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  br label %30

30:                                               ; preds = %13, %2
  %31 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %32 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %37 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %41 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %44 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %42, %46
  %48 = add nsw i64 %47, 8
  %49 = call i32 @bfd_put_32(i32 %38, i64 %39, i64 %48)
  %50 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %51 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  br label %52

52:                                               ; preds = %35, %30
  %53 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %54 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %58 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %64 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %91

66:                                               ; preds = %52
  %67 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %68 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, -1
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %73 = load i32, i32* @N_LBRAC, align 4
  %74 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %75 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @stab_write_symbol(%struct.stab_write_handle* %72, i32 %73, i32 0, i64 %76, i8* null)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %91

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %85 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %89 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %82, %79, %61
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @bfd_put_32(i32, i64, i64) #1

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
