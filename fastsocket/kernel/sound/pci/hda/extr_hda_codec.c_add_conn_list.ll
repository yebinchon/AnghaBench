; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_add_conn_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_add_conn_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_conn_list = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32*)* @add_conn_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_conn_list(%struct.hda_codec* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hda_conn_list*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 16, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.hda_conn_list* @kmalloc(i32 %15, i32 %16)
  store %struct.hda_conn_list* %17, %struct.hda_conn_list** %10, align 8
  %18 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %19 = icmp ne %struct.hda_conn_list* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %26 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %29 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %31 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i32 %32, i32* %33, i32 %37)
  %39 = load %struct.hda_conn_list*, %struct.hda_conn_list** %10, align 8
  %40 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %39, i32 0, i32 1
  %41 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %42 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %40, i32* %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %23, %20
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.hda_conn_list* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
