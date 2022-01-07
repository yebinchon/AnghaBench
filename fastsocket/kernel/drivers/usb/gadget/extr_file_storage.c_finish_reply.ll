; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_finish_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_finish_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.fsg_dev = type { i32, i32, i32, i32, %struct.fsg_buffhd*, i32, %struct.TYPE_4__*, i32 }
%struct.fsg_buffhd = type { %struct.fsg_buffhd*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@mod_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SS_NO_SENSE = common dso_local global i32 0, align 4
@BUF_STATE_EMPTY = common dso_local global i32 0, align 4
@FSG_STATE_ABORT_BULK_OUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @finish_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_reply(%struct.fsg_dev* %0) #0 {
  %2 = alloca %struct.fsg_dev*, align 8
  %3 = alloca %struct.fsg_buffhd*, align 8
  %4 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %2, align 8
  %5 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %6 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %5, i32 0, i32 4
  %7 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  store %struct.fsg_buffhd* %7, %struct.fsg_buffhd** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %9 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %169 [
    i32 130, label %11
    i32 128, label %12
    i32 129, label %24
    i32 131, label %147
  ]

11:                                               ; preds = %1
  br label %169

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mod_data, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %17 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %18 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fsg_set_halt(%struct.fsg_dev* %16, i32 %19)
  %21 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %22 = call i32 @halt_bulk_in_endpoint(%struct.fsg_dev* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %15, %12
  br label %169

24:                                               ; preds = %1
  %25 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %26 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %146

30:                                               ; preds = %24
  %31 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %32 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %37 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %41 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %42 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %45 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %48 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %47, i32 0, i32 2
  %49 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %50 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %49, i32 0, i32 1
  %51 = call i32 @start_transfer(%struct.fsg_dev* %40, i32 %43, %struct.TYPE_5__* %46, i32* %48, i32* %50)
  %52 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %53 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %52, i32 0, i32 0
  %54 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %53, align 8
  %55 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %56 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %55, i32 0, i32 4
  store %struct.fsg_buffhd* %54, %struct.fsg_buffhd** %56, align 8
  br label %145

57:                                               ; preds = %30
  %58 = call i32 (...) @transport_is_bbb()
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %113, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mod_data, i32 0, i32 0), align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %65 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %68 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %63
  %72 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %73 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %72, i32 0, i32 6
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %78 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %77, i32 0, i32 6
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SS_NO_SENSE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76, %71
  %85 = load i32, i32* @BUF_STATE_EMPTY, align 4
  %86 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %87 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %89 = call i32 @halt_bulk_in_endpoint(%struct.fsg_dev* %88)
  store i32 %89, i32* %4, align 4
  br label %112

90:                                               ; preds = %76, %63, %60
  %91 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %92 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %91, i32 0, i32 3
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %96 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %97 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %100 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %103 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %102, i32 0, i32 2
  %104 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %105 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %104, i32 0, i32 1
  %106 = call i32 @start_transfer(%struct.fsg_dev* %95, i32 %98, %struct.TYPE_5__* %101, i32* %103, i32* %105)
  %107 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %108 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %107, i32 0, i32 0
  %109 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %108, align 8
  %110 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %111 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %110, i32 0, i32 4
  store %struct.fsg_buffhd* %109, %struct.fsg_buffhd** %111, align 8
  br label %112

112:                                              ; preds = %90, %84
  br label %144

113:                                              ; preds = %57
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mod_data, i32 0, i32 0), align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %113
  %117 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %118 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %117, i32 0, i32 3
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  %121 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %122 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %123 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %126 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %129 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %128, i32 0, i32 2
  %130 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %131 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %130, i32 0, i32 1
  %132 = call i32 @start_transfer(%struct.fsg_dev* %121, i32 %124, %struct.TYPE_5__* %127, i32* %129, i32* %131)
  %133 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %3, align 8
  %134 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %133, i32 0, i32 0
  %135 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %134, align 8
  %136 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %137 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %136, i32 0, i32 4
  store %struct.fsg_buffhd* %135, %struct.fsg_buffhd** %137, align 8
  %138 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %139 = call i32 @halt_bulk_in_endpoint(%struct.fsg_dev* %138)
  store i32 %139, i32* %4, align 4
  br label %143

140:                                              ; preds = %113
  %141 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %142 = call i32 @pad_with_zeros(%struct.fsg_dev* %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %140, %116
  br label %144

144:                                              ; preds = %143, %112
  br label %145

145:                                              ; preds = %144, %35
  br label %146

146:                                              ; preds = %145, %29
  br label %169

147:                                              ; preds = %1
  %148 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %149 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %168

153:                                              ; preds = %147
  %154 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %155 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %160 = load i32, i32* @FSG_STATE_ABORT_BULK_OUT, align 4
  %161 = call i32 @raise_exception(%struct.fsg_dev* %159, i32 %160)
  %162 = load i32, i32* @EINTR, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %167

164:                                              ; preds = %153
  %165 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %166 = call i32 @throw_away_data(%struct.fsg_dev* %165)
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %164, %158
  br label %168

168:                                              ; preds = %167, %152
  br label %169

169:                                              ; preds = %1, %168, %146, %23, %11
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @fsg_set_halt(%struct.fsg_dev*, i32) #1

declare dso_local i32 @halt_bulk_in_endpoint(%struct.fsg_dev*) #1

declare dso_local i32 @start_transfer(%struct.fsg_dev*, i32, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @transport_is_bbb(...) #1

declare dso_local i32 @pad_with_zeros(%struct.fsg_dev*) #1

declare dso_local i32 @raise_exception(%struct.fsg_dev*, i32) #1

declare dso_local i32 @throw_away_data(%struct.fsg_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
