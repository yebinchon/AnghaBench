; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dspio_send_scp_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dspio_send_scp_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32, i32, i32, i32*, i32 }
%struct.scp_msg = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i32, i8*, i32, i32*)* @dspio_send_scp_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspio_send_scp_message(%struct.hda_codec* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ca0132_spec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.scp_msg*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %29 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %30 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %29, i32 0, i32 0
  %31 = load %struct.ca0132_spec*, %struct.ca0132_spec** %30, align 8
  store %struct.ca0132_spec* %31, %struct.ca0132_spec** %14, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32*, i32** %13, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %6
  %37 = load i8*, i8** %9, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @extract_scp_header(i32 %40, i32* %25, i32* %24, i32* %26, i32* null, i32* %27, i32* null, i32* null, i32* %23)
  %42 = load i32, i32* %23, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = mul i32 %44, 4
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %171

52:                                               ; preds = %36
  %53 = load i32, i32* %26, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %27, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %99

58:                                               ; preds = %55, %52
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %61, %58
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %171

70:                                               ; preds = %64
  %71 = load i8*, i8** %9, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %75 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %24, align 4
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %25, align 4
  store i32 %77, i32* %21, align 4
  %78 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %79 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, -65536
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %21, align 4
  %83 = shl i32 %82, 8
  %84 = load i32, i32* %22, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %87 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = udiv i64 %91, 4
  %93 = sub i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %96 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %98 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  store i32 1, i32* %18, align 4
  br label %99

99:                                               ; preds = %70, %55
  %100 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @dspio_write_multiple(%struct.hda_codec* %100, i32* %102, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %109 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %7, align 4
  br label %171

111:                                              ; preds = %99
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %169

114:                                              ; preds = %111
  %115 = load i64, i64* @jiffies, align 8
  %116 = call i64 @msecs_to_jiffies(i32 1000)
  %117 = add i64 %115, %116
  store i64 %117, i64* %28, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @memset(i8* %118, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %133, %114
  %122 = call i32 @msleep(i32 20)
  br label %123

123:                                              ; preds = %121
  %124 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %125 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i64, i64* @jiffies, align 8
  %130 = load i64, i64* %28, align 8
  %131 = call i64 @time_before(i64 %129, i64 %130)
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi i1 [ false, %123 ], [ %132, %128 ]
  br i1 %134, label %121, label %135

135:                                              ; preds = %133
  store i32 0, i32* %18, align 4
  %136 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %137 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %163, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %11, align 8
  %142 = bitcast i8* %141 to %struct.scp_msg*
  store %struct.scp_msg* %142, %struct.scp_msg** %20, align 8
  %143 = load %struct.scp_msg*, %struct.scp_msg** %20, align 8
  %144 = getelementptr inbounds %struct.scp_msg, %struct.scp_msg* %143, i32 0, i32 1
  %145 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %146 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %145, i32 0, i32 5
  %147 = call i32 @memcpy(i32* %144, i32* %146, i32 4)
  %148 = load %struct.scp_msg*, %struct.scp_msg** %20, align 8
  %149 = getelementptr inbounds %struct.scp_msg, %struct.scp_msg* %148, i32 0, i32 0
  %150 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %151 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %154 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @memcpy(i32* %149, i32* %152, i32 %155)
  %157 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %158 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  %161 = mul nsw i32 %160, 4
  %162 = load i32*, i32** %13, align 8
  store i32 %161, i32* %162, align 4
  store i32 0, i32* %15, align 4
  br label %166

163:                                              ; preds = %135
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %163, %140
  %167 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  %168 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %167, i32 0, i32 2
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %166, %111
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %169, %107, %67, %49
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i32 @extract_scp_header(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dspio_write_multiple(%struct.hda_codec*, i32*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
