; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_i1480_mac_fw_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_i1480_mac_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { {}*, {}*, i32, i32, i32, i32, i64 }
%struct.i1480_rceb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"WARNING: firmware file name %s is deprecated, please rename to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot setup after MAC fw upload: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"MAC fw '%s': Initialization timed out (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"MAC fw '%s': initialization event returns wrong size (%zu bytes vs %zu needed)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@i1480_CET_VS1 = common dso_local global i32 0, align 4
@i1480_EVT_RM_INIT_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"wrong initialization event 0x%02x/%04x/%02x received; expected 0x%02x/%04x/00\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"MAC fw '%s': MBOA reset failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i1480_mac_fw_upload(%struct.i1480* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i1480*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i1480_rceb*, align 8
  store %struct.i1480* %0, %struct.i1480** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.i1480*, %struct.i1480** %3, align 8
  %8 = getelementptr inbounds %struct.i1480, %struct.i1480* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.i1480_rceb*
  store %struct.i1480_rceb* %11, %struct.i1480_rceb** %6, align 8
  %12 = load %struct.i1480*, %struct.i1480** %3, align 8
  %13 = load %struct.i1480*, %struct.i1480** %3, align 8
  %14 = getelementptr inbounds %struct.i1480, %struct.i1480* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__mac_fw_upload(%struct.i1480* %12, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.i1480*, %struct.i1480** %3, align 8
  %23 = load %struct.i1480*, %struct.i1480** %3, align 8
  %24 = getelementptr inbounds %struct.i1480, %struct.i1480* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__mac_fw_upload(%struct.i1480* %22, i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %161

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.i1480*, %struct.i1480** %3, align 8
  %37 = getelementptr inbounds %struct.i1480, %struct.i1480* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.i1480*, %struct.i1480** %3, align 8
  %40 = getelementptr inbounds %struct.i1480, %struct.i1480* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i1480*, %struct.i1480** %3, align 8
  %43 = getelementptr inbounds %struct.i1480, %struct.i1480* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %35, %32
  %47 = load %struct.i1480*, %struct.i1480** %3, align 8
  %48 = call i32 @i1480_fw_is_running_q(%struct.i1480* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %156

52:                                               ; preds = %46
  %53 = load %struct.i1480*, %struct.i1480** %3, align 8
  %54 = getelementptr inbounds %struct.i1480, %struct.i1480* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.i1480*)**
  %56 = load i32 (%struct.i1480*)*, i32 (%struct.i1480*)** %55, align 8
  %57 = icmp ne i32 (%struct.i1480*)* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.i1480*, %struct.i1480** %3, align 8
  %60 = getelementptr inbounds %struct.i1480, %struct.i1480* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.i1480*)**
  %62 = load i32 (%struct.i1480*)*, i32 (%struct.i1480*)** %61, align 8
  %63 = load %struct.i1480*, %struct.i1480** %3, align 8
  %64 = call i32 %62(%struct.i1480* %63)
  br label %66

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i32 [ %64, %58 ], [ 0, %65 ]
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.i1480*, %struct.i1480** %3, align 8
  %72 = getelementptr inbounds %struct.i1480, %struct.i1480* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %159

76:                                               ; preds = %66
  %77 = load %struct.i1480*, %struct.i1480** %3, align 8
  %78 = getelementptr inbounds %struct.i1480, %struct.i1480* %77, i32 0, i32 1
  %79 = bitcast {}** %78 to i32 (%struct.i1480*)**
  %80 = load i32 (%struct.i1480*)*, i32 (%struct.i1480*)** %79, align 8
  %81 = load %struct.i1480*, %struct.i1480** %3, align 8
  %82 = call i32 %80(%struct.i1480* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load %struct.i1480*, %struct.i1480** %3, align 8
  %87 = getelementptr inbounds %struct.i1480, %struct.i1480* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.i1480*, %struct.i1480** %3, align 8
  %90 = getelementptr inbounds %struct.i1480, %struct.i1480* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %92)
  br label %157

94:                                               ; preds = %76
  %95 = load %struct.i1480*, %struct.i1480** %3, align 8
  %96 = getelementptr inbounds %struct.i1480, %struct.i1480* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %98, 12
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.i1480*, %struct.i1480** %3, align 8
  %102 = getelementptr inbounds %struct.i1480, %struct.i1480* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i1480*, %struct.i1480** %3, align 8
  %105 = getelementptr inbounds %struct.i1480, %struct.i1480* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.i1480*, %struct.i1480** %3, align 8
  %108 = getelementptr inbounds %struct.i1480, %struct.i1480* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %109, i64 12)
  br label %158

111:                                              ; preds = %94
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  %114 = load %struct.i1480*, %struct.i1480** %3, align 8
  %115 = load %struct.i1480_rceb*, %struct.i1480_rceb** %6, align 8
  %116 = getelementptr inbounds %struct.i1480_rceb, %struct.i1480_rceb* %115, i32 0, i32 0
  %117 = load i32, i32* @i1480_CET_VS1, align 4
  %118 = load i32, i32* @i1480_EVT_RM_INIT_DONE, align 4
  %119 = call i64 @i1480_rceb_check(%struct.i1480* %114, %struct.TYPE_2__* %116, i32* null, i32 0, i32 %117, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %111
  %122 = load %struct.i1480*, %struct.i1480** %3, align 8
  %123 = getelementptr inbounds %struct.i1480, %struct.i1480* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.i1480_rceb*, %struct.i1480_rceb** %6, align 8
  %126 = getelementptr inbounds %struct.i1480_rceb, %struct.i1480_rceb* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.i1480_rceb*, %struct.i1480_rceb** %6, align 8
  %130 = getelementptr inbounds %struct.i1480_rceb, %struct.i1480_rceb* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = load %struct.i1480_rceb*, %struct.i1480_rceb** %6, align 8
  %135 = getelementptr inbounds %struct.i1480_rceb, %struct.i1480_rceb* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @i1480_CET_VS1, align 4
  %139 = load i32, i32* @i1480_EVT_RM_INIT_DONE, align 4
  %140 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %133, i32 %137, i32 %138, i32 %139)
  br label %157

141:                                              ; preds = %111
  %142 = load %struct.i1480*, %struct.i1480** %3, align 8
  %143 = call i32 @i1480_cmd_reset(%struct.i1480* %142)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.i1480*, %struct.i1480** %3, align 8
  %148 = getelementptr inbounds %struct.i1480, %struct.i1480* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.i1480*, %struct.i1480** %3, align 8
  %151 = getelementptr inbounds %struct.i1480, %struct.i1480* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %149, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %146, %141
  br label %156

156:                                              ; preds = %155, %51
  br label %157

157:                                              ; preds = %156, %121, %85
  br label %158

158:                                              ; preds = %157, %100
  br label %159

159:                                              ; preds = %158, %70
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %30
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @__mac_fw_upload(%struct.i1480*, i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @i1480_fw_is_running_q(%struct.i1480*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @i1480_rceb_check(%struct.i1480*, %struct.TYPE_2__*, i32*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i1480_cmd_reset(%struct.i1480*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
