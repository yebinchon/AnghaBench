; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_array_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_array_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_array = type { i32, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @snd_array_new(%struct.snd_array* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.snd_array* %0, %struct.snd_array** %3, align 8
  %7 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %8 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %70

16:                                               ; preds = %1
  %17 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %18 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %21 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %16
  %25 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %26 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %29 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  %34 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %35 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %38, 4096
  %40 = zext i1 %39 to i32
  %41 = call i64 @snd_BUG_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  store i8* null, i8** %2, align 8
  br label %70

44:                                               ; preds = %24
  %45 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %46 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load i32, i32* @__GFP_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @krealloc(i8* %47, i32 %48, i32 %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  store i8* null, i8** %2, align 8
  br label %70

56:                                               ; preds = %44
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %59 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %62 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %16
  %64 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %65 = load %struct.snd_array*, %struct.snd_array** %3, align 8
  %66 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = call i8* @snd_array_elem(%struct.snd_array* %64, i32 %67)
  store i8* %69, i8** %2, align 8
  br label %70

70:                                               ; preds = %63, %55, %43, %15
  %71 = load i8*, i8** %2, align 8
  ret i8* %71
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i8* @krealloc(i8*, i32, i32) #1

declare dso_local i8* @snd_array_elem(%struct.snd_array*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
