; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_read_and_add_raw_conns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_read_and_add_raw_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @read_and_add_raw_conns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_and_add_raw_conns(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  store i32* %9, i32** %7, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = call i32 @snd_hda_get_raw_connections(%struct.hda_codec* %10, i32 %11, i32* %12, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ENOSPC, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @snd_hda_get_num_raw_conns(%struct.hda_codec* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i32 %27, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %59

35:                                               ; preds = %20
  %36 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @snd_hda_get_raw_connections(%struct.hda_codec* %36, i32 %37, i32* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %35, %2
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %45, i32 %46, i32 %47, i32* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %53 = icmp ne i32* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @kfree(i32* %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %32
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @snd_hda_get_raw_connections(%struct.hda_codec*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_hda_get_num_raw_conns(%struct.hda_codec*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @snd_hda_override_conn_list(%struct.hda_codec*, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
