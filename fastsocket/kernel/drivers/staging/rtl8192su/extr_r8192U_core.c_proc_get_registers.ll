; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_proc_get_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_proc_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"\0A####################page %x##################\0A \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0AD:  %2x > \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%2.2x \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%8.8x \00", align 1
@bMaskDWord = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_registers(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = bitcast i8* %21 to %struct.net_device*
  store %struct.net_device* %22, %struct.net_device** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 255, i32* %20, align 4
  store i32 0, i32* %17, align 4
  store i32 256, i32* %18, align 4
  store i32 2048, i32* %19, align 4
  %23 = load i32, i32* %17, align 4
  %24 = call i32 @IS_BB_REG_OFFSET_92S(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %93, label %26

26:                                               ; preds = %6
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %17, align 4
  %35 = ashr i32 %34, 8
  %36 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %91, %26
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %16, align 4
  %54 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %49, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %86, %45
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 16
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp sle i32 %63, %64
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %68, label %91

68:                                               ; preds = %66
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load %struct.net_device*, %struct.net_device** %13, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %16, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @read_nic_byte(%struct.net_device* %76, i32 %79)
  %81 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %72, i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %68
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %59

91:                                               ; preds = %66
  br label %41

92:                                               ; preds = %41
  br label %161

93:                                               ; preds = %6
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %17, align 4
  %102 = ashr i32 %101, 8
  %103 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %159, %93
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %160

112:                                              ; preds = %108
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %14, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* %16, align 4
  %121 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %116, i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %154, %112
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp sle i32 %130, %131
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi i1 [ false, %126 ], [ %132, %129 ]
  br i1 %134, label %135, label %159

135:                                              ; preds = %133
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load %struct.net_device*, %struct.net_device** %13, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %16, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @bMaskDWord, align 4
  %148 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %143, i32 %146, i32 %147)
  %149 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %139, i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %135
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, 4
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %126

159:                                              ; preds = %133
  br label %108

160:                                              ; preds = %108
  br label %161

161:                                              ; preds = %160, %92
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %14, align 4
  %168 = sub nsw i32 %166, %167
  %169 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %165, i32 %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %14, align 4
  %174 = load i32*, i32** %11, align 8
  store i32 1, i32* %174, align 4
  %175 = load i32, i32* %14, align 4
  ret i32 %175
}

declare dso_local i32 @IS_BB_REG_OFFSET_92S(i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
