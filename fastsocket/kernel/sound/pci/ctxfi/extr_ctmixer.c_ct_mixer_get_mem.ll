; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_get_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { %struct.ct_mixer*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_CT_AMIXERS = common dso_local global i32 0, align 4
@CHN_NUM = common dso_local global i32 0, align 4
@NUM_CT_SUMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer**)* @ct_mixer_get_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_mixer_get_mem(%struct.ct_mixer** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_mixer**, align 8
  %4 = alloca %struct.ct_mixer*, align 8
  %5 = alloca i32, align 4
  store %struct.ct_mixer** %0, %struct.ct_mixer*** %3, align 8
  %6 = load %struct.ct_mixer**, %struct.ct_mixer*** %3, align 8
  store %struct.ct_mixer* null, %struct.ct_mixer** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 16, i32 %7)
  %9 = bitcast i8* %8 to %struct.ct_mixer*
  store %struct.ct_mixer* %9, %struct.ct_mixer** %4, align 8
  %10 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %11 = icmp ne %struct.ct_mixer* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load i32, i32* @NUM_CT_AMIXERS, align 4
  %17 = load i32, i32* @CHN_NUM, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.ct_mixer*
  %25 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %26 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %25, i32 0, i32 0
  store %struct.ct_mixer* %24, %struct.ct_mixer** %26, align 8
  %27 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %28 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %27, i32 0, i32 0
  %29 = load %struct.ct_mixer*, %struct.ct_mixer** %28, align 8
  %30 = icmp ne %struct.ct_mixer* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %60

34:                                               ; preds = %15
  %35 = load i32, i32* @NUM_CT_SUMS, align 4
  %36 = load i32, i32* @CHN_NUM, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i32 %40, i32 %41)
  %43 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %44 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %46 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %55

52:                                               ; preds = %34
  %53 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %54 = load %struct.ct_mixer**, %struct.ct_mixer*** %3, align 8
  store %struct.ct_mixer* %53, %struct.ct_mixer** %54, align 8
  store i32 0, i32* %2, align 4
  br label %64

55:                                               ; preds = %49
  %56 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %57 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %56, i32 0, i32 0
  %58 = load %struct.ct_mixer*, %struct.ct_mixer** %57, align 8
  %59 = call i32 @kfree(%struct.ct_mixer* %58)
  br label %60

60:                                               ; preds = %55, %31
  %61 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %62 = call i32 @kfree(%struct.ct_mixer* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %52, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ct_mixer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
