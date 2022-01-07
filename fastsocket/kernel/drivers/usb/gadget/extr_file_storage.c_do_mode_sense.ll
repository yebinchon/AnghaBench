; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_mode_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32*, %struct.lun* }
%struct.lun = type { i8*, i64 }
%struct.fsg_buffhd = type { i64 }

@SS_INVALID_FIELD_IN_CDB = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SS_SAVING_PARAMETERS_NOT_SUPPORTED = common dso_local global i8* null, align 8
@SC_MODE_SENSE_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.fsg_buffhd*)* @do_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mode_sense(%struct.fsg_dev* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca %struct.lun*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %4, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %5, align 8
  %17 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %18 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %17, i32 0, i32 1
  %19 = load %struct.lun*, %struct.lun** %18, align 8
  store %struct.lun* %19, %struct.lun** %6, align 8
  %20 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %21 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %26 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  store i32* %29, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %31 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -9
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i8*, i8** @SS_INVALID_FIELD_IN_CDB, align 8
  %39 = load %struct.lun*, %struct.lun** %6, align 8
  %40 = getelementptr inbounds %struct.lun, %struct.lun* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %165

43:                                               ; preds = %2
  %44 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %45 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 6
  store i32 %49, i32* %10, align 4
  %50 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %51 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 63
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load i8*, i8** @SS_SAVING_PARAMETERS_NOT_SUPPORTED, align 8
  %60 = load %struct.lun*, %struct.lun** %6, align 8
  %61 = getelementptr inbounds %struct.lun, %struct.lun* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %165

64:                                               ; preds = %43
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 63
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @memset(i32* %71, i32 0, i32 8)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SC_MODE_SENSE_6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %64
  %77 = load %struct.lun*, %struct.lun** %6, align 8
  %78 = getelementptr inbounds %struct.lun, %struct.lun* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 128, i32 0
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32* %86, i32** %8, align 8
  store i32 255, i32* %16, align 4
  br label %98

87:                                               ; preds = %64
  %88 = load %struct.lun*, %struct.lun** %6, align 8
  %89 = getelementptr inbounds %struct.lun, %struct.lun* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 128, i32 0
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  store i32* %97, i32** %8, align 8
  store i32 65535, i32* %16, align 4
  br label %98

98:                                               ; preds = %87, %76
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 8
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %101, %98
  store i32 1, i32* %14, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 8, i32* %106, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 10, i32* %108, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = call i32 @memset(i32* %110, i32 0, i32 10)
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %104
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 4, i32* %116, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = call i32 @put_unaligned_be16(i32 65535, i32* %118)
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 8
  %122 = call i32 @put_unaligned_be16(i32 65535, i32* %121)
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 10
  %125 = call i32 @put_unaligned_be16(i32 65535, i32* %124)
  br label %126

126:                                              ; preds = %114, %104
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 12
  store i32* %128, i32** %8, align 8
  br label %129

129:                                              ; preds = %126, %101
  %130 = load i32*, i32** %8, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = ptrtoint i32* %130 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139, %129
  %144 = load i8*, i8** @SS_INVALID_FIELD_IN_CDB, align 8
  %145 = load %struct.lun*, %struct.lun** %6, align 8
  %146 = getelementptr inbounds %struct.lun, %struct.lun* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %165

149:                                              ; preds = %139
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @SC_MODE_SENSE_6, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32, i32* %15, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %155, i32* %157, align 4
  br label %163

158:                                              ; preds = %149
  %159 = load i32, i32* %15, align 4
  %160 = sub nsw i32 %159, 2
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @put_unaligned_be16(i32 %160, i32* %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %143, %58, %37
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
