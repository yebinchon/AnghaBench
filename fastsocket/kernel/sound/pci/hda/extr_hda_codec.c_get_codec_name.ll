; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_get_codec_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_get_codec_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_vendor_id = type { i64, i8* }
%struct.hda_codec = type { i32, i8*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8* }

@hda_vendor_ids = common dso_local global %struct.hda_vendor_id* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Generic %04x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ID %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @get_codec_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_codec_name(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_vendor_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i8], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i8* null, i8** %5, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = ashr i32 %10, 16
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %62

18:                                               ; preds = %1
  %19 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** @hda_vendor_ids, align 8
  store %struct.hda_vendor_id* %19, %struct.hda_vendor_id** %4, align 8
  br label %20

20:                                               ; preds = %36, %18
  %21 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** %4, align 8
  %22 = getelementptr inbounds %struct.hda_vendor_id, %struct.hda_vendor_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** %4, align 8
  %27 = getelementptr inbounds %struct.hda_vendor_id, %struct.hda_vendor_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** %4, align 8
  %33 = getelementptr inbounds %struct.hda_vendor_id, %struct.hda_vendor_id* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  br label %39

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** %4, align 8
  %38 = getelementptr inbounds %struct.hda_vendor_id, %struct.hda_vendor_id* %37, i32 1
  store %struct.hda_vendor_id* %38, %struct.hda_vendor_id** %4, align 8
  br label %20

39:                                               ; preds = %31, %20
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kstrdup(i8* %49, i32 %50)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %55 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %111

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %17
  %63 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %64 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %111

68:                                               ; preds = %62
  %69 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %70 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = icmp ne %struct.TYPE_2__* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %82 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @kstrdup(i8* %85, i32 %86)
  %88 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %89 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %102

90:                                               ; preds = %73, %68
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %92 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %93 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 65535
  %96 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kstrdup(i8* %97, i32 %98)
  %100 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %101 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %90, %80
  %103 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %104 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %111

110:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %107, %67, %58
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
