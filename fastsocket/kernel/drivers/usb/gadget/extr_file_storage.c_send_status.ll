; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_send_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.fsg_dev = type { %struct.fsg_buffhd*, i32, %struct.TYPE_3__*, i32, %struct.fsg_buffhd*, i32, i32, i32, i64, i64, %struct.lun* }
%struct.TYPE_3__ = type { %struct.fsg_buffhd*, i32, i32, i64 }
%struct.fsg_buffhd = type { i64, %struct.fsg_buffhd*, %struct.TYPE_3__*, %struct.interrupt_data*, i32 }
%struct.interrupt_data = type { i8*, i64, i8*, i8*, i32, i8* }
%struct.lun = type { i64, i64 }
%struct.bulk_cs_wrap = type { i8*, i64, i8*, i8*, i32, i8* }

@USB_STATUS_PASS = common dso_local global i8* null, align 8
@BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@SS_NO_SENSE = common dso_local global i64 0, align 8
@SS_LOGICAL_UNIT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"sending phase-error status\0A\00", align 1
@USB_STATUS_PHASE_ERROR = common dso_local global i8* null, align 8
@SS_INVALID_COMMAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"sending command-failure status\0A\00", align 1
@USB_STATUS_FAIL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"  sense data: SK x%02x, ASC x%02x, ASCQ x%02x;  info x%x\0A\00", align 1
@USB_BULK_CS_SIG = common dso_local global i32 0, align 4
@USB_BULK_CS_WRAP_LEN = common dso_local global i32 0, align 4
@mod_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@USB_PR_CB = common dso_local global i64 0, align 8
@USB_SC_UFI = common dso_local global i64 0, align 8
@CBI_INTERRUPT_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @send_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_status(%struct.fsg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.lun*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bulk_cs_wrap*, align 8
  %11 = alloca %struct.interrupt_data*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  %12 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %13 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %12, i32 0, i32 10
  %14 = load %struct.lun*, %struct.lun** %13, align 8
  store %struct.lun* %14, %struct.lun** %4, align 8
  %15 = load i8*, i8** @USB_STATUS_PASS, align 8
  store i8* %15, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %17 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %16, i32 0, i32 0
  %18 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %17, align 8
  store %struct.fsg_buffhd* %18, %struct.fsg_buffhd** %5, align 8
  br label %19

19:                                               ; preds = %32, %1
  %20 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %21 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %27 = call i32 @sleep_thread(%struct.fsg_dev* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %197

32:                                               ; preds = %25
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.lun*, %struct.lun** %4, align 8
  %35 = icmp ne %struct.lun* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.lun*, %struct.lun** %4, align 8
  %38 = getelementptr inbounds %struct.lun, %struct.lun* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = load %struct.lun*, %struct.lun** %4, align 8
  %41 = getelementptr inbounds %struct.lun, %struct.lun* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  br label %53

43:                                               ; preds = %33
  %44 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %45 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @SS_NO_SENSE, align 8
  store i64 %49, i64* %8, align 8
  br label %52

50:                                               ; preds = %43
  %51 = load i64, i64* @SS_LOGICAL_UNIT_NOT_SUPPORTED, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %55 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %54, i32 0, i32 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %60 = call i32 @DBG(%struct.fsg_dev* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %61 = load i8*, i8** @USB_STATUS_PHASE_ERROR, align 8
  store i8* %61, i8** %7, align 8
  %62 = load i64, i64* @SS_INVALID_COMMAND, align 8
  store i64 %62, i64* %8, align 8
  br label %81

63:                                               ; preds = %53
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @SS_NO_SENSE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %69 = call i32 @DBG(%struct.fsg_dev* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i8*, i8** @USB_STATUS_FAIL, align 8
  store i8* %70, i8** %7, align 8
  %71 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @SK(i64 %72)
  %74 = load i64, i64* %8, align 8
  %75 = call i64 @ASC(i64 %74)
  %76 = load i64, i64* %8, align 8
  %77 = call i8* @ASCQ(i64 %76)
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @VDBG(%struct.fsg_dev* %71, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %75, i8* %77, i64 %78)
  br label %80

80:                                               ; preds = %67, %63
  br label %81

81:                                               ; preds = %80, %58
  %82 = call i64 (...) @transport_is_bbb()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  %85 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %86 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %85, i32 0, i32 3
  %87 = load %struct.interrupt_data*, %struct.interrupt_data** %86, align 8
  %88 = bitcast %struct.interrupt_data* %87 to %struct.bulk_cs_wrap*
  store %struct.bulk_cs_wrap* %88, %struct.bulk_cs_wrap** %10, align 8
  %89 = load i32, i32* @USB_BULK_CS_SIG, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %10, align 8
  %92 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %94 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %10, align 8
  %97 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %99 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %10, align 8
  %103 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %10, align 8
  %106 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @USB_BULK_CS_WRAP_LEN, align 4
  %108 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %109 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %108, i32 0, i32 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 %107, i32* %111, align 4
  %112 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %113 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %117 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %118 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %121 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %120, i32 0, i32 2
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %124 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %123, i32 0, i32 4
  %125 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %126 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %125, i32 0, i32 0
  %127 = call i32 @start_transfer(%struct.fsg_dev* %116, i32 %119, %struct.TYPE_3__* %122, i32* %124, i64* %126)
  br label %191

128:                                              ; preds = %81
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mod_data, i32 0, i32 0), align 8
  %130 = load i64, i64* @USB_PR_CB, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %197

133:                                              ; preds = %128
  %134 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %135 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %134, i32 0, i32 3
  %136 = load %struct.interrupt_data*, %struct.interrupt_data** %135, align 8
  store %struct.interrupt_data* %136, %struct.interrupt_data** %11, align 8
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mod_data, i32 0, i32 1), align 8
  %138 = load i64, i64* @USB_SC_UFI, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load i64, i64* %8, align 8
  %142 = call i64 @ASC(i64 %141)
  %143 = load %struct.interrupt_data*, %struct.interrupt_data** %11, align 8
  %144 = getelementptr inbounds %struct.interrupt_data, %struct.interrupt_data* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i8* @ASCQ(i64 %145)
  %147 = load %struct.interrupt_data*, %struct.interrupt_data** %11, align 8
  %148 = getelementptr inbounds %struct.interrupt_data, %struct.interrupt_data* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %155

149:                                              ; preds = %133
  %150 = load %struct.interrupt_data*, %struct.interrupt_data** %11, align 8
  %151 = getelementptr inbounds %struct.interrupt_data, %struct.interrupt_data* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = load %struct.interrupt_data*, %struct.interrupt_data** %11, align 8
  %154 = getelementptr inbounds %struct.interrupt_data, %struct.interrupt_data* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %149, %140
  %156 = load i32, i32* @CBI_INTERRUPT_DATA_LEN, align 4
  %157 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %158 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %157, i32 0, i32 2
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  store i32 %156, i32* %160, align 4
  %161 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %162 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %163 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %162, i32 0, i32 4
  store %struct.fsg_buffhd* %161, %struct.fsg_buffhd** %163, align 8
  %164 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %165 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %164, i32 0, i32 2
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %170 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %169, i32 0, i32 2
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  store i32 %168, i32* %172, align 8
  %173 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %174 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %175 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %174, i32 0, i32 2
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  store %struct.fsg_buffhd* %173, %struct.fsg_buffhd** %177, align 8
  %178 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %179 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %180 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %183 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %182, i32 0, i32 2
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %186 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %185, i32 0, i32 1
  %187 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %188 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %187, i32 0, i32 0
  %189 = call i32 @start_transfer(%struct.fsg_dev* %178, i32 %181, %struct.TYPE_3__* %184, i32* %186, i64* %188)
  br label %190

190:                                              ; preds = %155
  br label %191

191:                                              ; preds = %190, %84
  %192 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %193 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %192, i32 0, i32 1
  %194 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %193, align 8
  %195 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %196 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %195, i32 0, i32 0
  store %struct.fsg_buffhd* %194, %struct.fsg_buffhd** %196, align 8
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %191, %132, %30
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @sleep_thread(%struct.fsg_dev*) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @VDBG(%struct.fsg_dev*, i8*, i32, i64, i8*, i64) #1

declare dso_local i32 @SK(i64) #1

declare dso_local i64 @ASC(i64) #1

declare dso_local i8* @ASCQ(i64) #1

declare dso_local i64 @transport_is_bbb(...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @start_transfer(%struct.fsg_dev*, i32, %struct.TYPE_3__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
