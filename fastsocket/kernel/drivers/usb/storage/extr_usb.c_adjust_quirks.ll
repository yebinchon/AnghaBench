; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_adjust_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_adjust_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@US_FL_SANE_SENSE = common dso_local global i32 0, align 4
@US_FL_BAD_SENSE = common dso_local global i32 0, align 4
@US_FL_FIX_CAPACITY = common dso_local global i32 0, align 4
@US_FL_CAPACITY_HEURISTICS = common dso_local global i32 0, align 4
@US_FL_IGNORE_DEVICE = common dso_local global i32 0, align 4
@US_FL_NOT_LOCKABLE = common dso_local global i32 0, align 4
@US_FL_MAX_SECTORS_64 = common dso_local global i32 0, align 4
@US_FL_CAPACITY_OK = common dso_local global i32 0, align 4
@US_FL_IGNORE_RESIDUE = common dso_local global i32 0, align 4
@US_FL_SINGLE_LUN = common dso_local global i32 0, align 4
@US_FL_NO_WP_DETECT = common dso_local global i32 0, align 4
@quirks = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Quirks match for vid %04x pid %04x: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*)* @adjust_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_quirks(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %8 = load %struct.us_data*, %struct.us_data** %2, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.us_data*, %struct.us_data** %2, align 8
  %16 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16_to_cpu(i32 %20)
  store i64 %21, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %22 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %23 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @US_FL_FIX_CAPACITY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @US_FL_CAPACITY_HEURISTICS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @US_FL_IGNORE_DEVICE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @US_FL_NOT_LOCKABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @US_FL_MAX_SECTORS_64, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @US_FL_CAPACITY_OK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @US_FL_IGNORE_RESIDUE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @US_FL_SINGLE_LUN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @US_FL_NO_WP_DETECT, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** @quirks, align 8
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %83, %1
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @simple_strtoul(i8* %50, i8** %3, i32 16)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 58
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i64, i64* %5, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = call i64 @simple_strtoul(i8* %61, i8** %3, i32 16)
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 58
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %84

70:                                               ; preds = %64, %58, %53, %48
  br label %71

71:                                               ; preds = %82, %70
  %72 = load i8*, i8** %3, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %3, align 8
  %78 = load i8, i8* %76, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 44
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %83

82:                                               ; preds = %75
  br label %71

83:                                               ; preds = %81, %71
  br label %44

84:                                               ; preds = %69, %44
  %85 = load i8*, i8** %3, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %171

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %151, %89
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %3, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i8*, i8** %3, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 44
  br label %101

101:                                              ; preds = %96, %90
  %102 = phi i1 [ false, %90 ], [ %100, %96 ]
  br i1 %102, label %103, label %152

103:                                              ; preds = %101
  %104 = load i8*, i8** %3, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i32 @TOLOWER(i8 signext %105)
  switch i32 %106, label %151 [
    i32 97, label %107
    i32 98, label %111
    i32 99, label %115
    i32 104, label %119
    i32 105, label %123
    i32 108, label %127
    i32 109, label %131
    i32 111, label %135
    i32 114, label %139
    i32 115, label %143
    i32 119, label %147
  ]

107:                                              ; preds = %103
  %108 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %151

111:                                              ; preds = %103
  %112 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %151

115:                                              ; preds = %103
  %116 = load i32, i32* @US_FL_FIX_CAPACITY, align 4
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %151

119:                                              ; preds = %103
  %120 = load i32, i32* @US_FL_CAPACITY_HEURISTICS, align 4
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %151

123:                                              ; preds = %103
  %124 = load i32, i32* @US_FL_IGNORE_DEVICE, align 4
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %151

127:                                              ; preds = %103
  %128 = load i32, i32* @US_FL_NOT_LOCKABLE, align 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %151

131:                                              ; preds = %103
  %132 = load i32, i32* @US_FL_MAX_SECTORS_64, align 4
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %6, align 4
  br label %151

135:                                              ; preds = %103
  %136 = load i32, i32* @US_FL_CAPACITY_OK, align 4
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %151

139:                                              ; preds = %103
  %140 = load i32, i32* @US_FL_IGNORE_RESIDUE, align 4
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %151

143:                                              ; preds = %103
  %144 = load i32, i32* @US_FL_SINGLE_LUN, align 4
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  br label %151

147:                                              ; preds = %103
  %148 = load i32, i32* @US_FL_NO_WP_DETECT, align 4
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %103, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107
  br label %90

152:                                              ; preds = %101
  %153 = load %struct.us_data*, %struct.us_data** %2, align 8
  %154 = getelementptr inbounds %struct.us_data, %struct.us_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, %157
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.us_data*, %struct.us_data** %2, align 8
  %162 = getelementptr inbounds %struct.us_data, %struct.us_data* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.us_data*, %struct.us_data** %2, align 8
  %164 = getelementptr inbounds %struct.us_data, %struct.us_data* %163, i32 0, i32 1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %4, align 8
  %168 = load i64, i64* %5, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @dev_info(i32* %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %167, i64 %168, i32 %169)
  br label %171

171:                                              ; preds = %152, %88
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @TOLOWER(i8 signext) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
