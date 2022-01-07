; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_scan.c_ubifs_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_scan.c_ubifs_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_scan_leb = type { i32 }
%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"look at LEB %d:%d (%d bytes left)\00", align 1
@SCANNED_EMPTY_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bad node\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"empty space starts at non-aligned offset %d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"corrupt empty space at LEB %d:%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"LEB %d scanning failed\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"LEB %d scanning failed, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_scan_leb* @ubifs_scan(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_scan_leb*, align 8
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_scan_leb*, align 8
  %16 = alloca %struct.ubifs_ch*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  store i8* %22, i8** %12, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info* %28, i32 %29, i32 %30, i8* %31)
  store %struct.ubifs_scan_leb* %32, %struct.ubifs_scan_leb** %15, align 8
  %33 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %34 = call i64 @IS_ERR(%struct.ubifs_scan_leb* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  store %struct.ubifs_scan_leb* %37, %struct.ubifs_scan_leb** %6, align 8
  br label %201

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %95, %59, %38
  %40 = load i32, i32* %14, align 4
  %41 = icmp sge i32 %40, 8
  br i1 %41, label %42, label %111

42:                                               ; preds = %39
  %43 = load i8*, i8** %12, align 8
  %44 = bitcast i8* %43 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %44, %struct.ubifs_ch** %16, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @dbg_scan(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = call i32 (...) @cond_resched()
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %50, i8* %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %42
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  store i8* %66, i8** %12, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %14, align 4
  br label %39

70:                                               ; preds = %42
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @SCANNED_EMPTY_SPACE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %111

75:                                               ; preds = %70
  %76 = load i32, i32* %18, align 4
  switch i32 %76, label %82 [
    i32 128, label %77
    i32 129, label %79
    i32 130, label %80
    i32 131, label %80
  ]

77:                                               ; preds = %75
  %78 = call i32 @dbg_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %175

79:                                               ; preds = %75
  br label %86

80:                                               ; preds = %75, %75
  %81 = call i32 @dbg_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %175

82:                                               ; preds = %75
  %83 = call i32 @dbg_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %193

86:                                               ; preds = %79
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %88 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @ubifs_add_snod(%struct.ubifs_info* %87, %struct.ubifs_scan_leb* %88, i8* %89, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %193

95:                                               ; preds = %86
  %96 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %97 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = call i32 @ALIGN(i32 %99, i32 8)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr i8, i8* %105, i64 %106
  store i8* %107, i8** %12, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %39

111:                                              ; preds = %74, %39
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = srem i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %121, %118
  br label %175

125:                                              ; preds = %111
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %127 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @ubifs_end_scan(%struct.ubifs_info* %126, %struct.ubifs_scan_leb* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %141, %125
  %132 = load i32, i32* %14, align 4
  %133 = icmp sgt i32 %132, 4
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = load i8*, i8** %12, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %148

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %9, align 4
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr i8, i8* %144, i64 4
  store i8* %145, i8** %12, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %146, 4
  store i32 %147, i32* %14, align 4
  br label %131

148:                                              ; preds = %139, %131
  br label %149

149:                                              ; preds = %166, %148
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %149
  %153 = load i8*, i8** %12, align 8
  %154 = bitcast i8* %153 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 255
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %157
  br label %175

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  %169 = load i8*, i8** %12, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %12, align 8
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %14, align 4
  br label %149

173:                                              ; preds = %149
  %174 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  store %struct.ubifs_scan_leb* %174, %struct.ubifs_scan_leb** %6, align 8
  br label %201

175:                                              ; preds = %164, %124, %80, %77
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %175
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i8*, i8** %12, align 8
  %183 = call i32 @ubifs_scanned_corruption(%struct.ubifs_info* %179, i32 %180, i32 %181, i8* %182)
  %184 = load i32, i32* %8, align 4
  %185 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %178, %175
  %187 = load i32, i32* @EUCLEAN, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %13, align 4
  %189 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %190 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %189)
  %191 = load i32, i32* %13, align 4
  %192 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %191)
  store %struct.ubifs_scan_leb* %192, %struct.ubifs_scan_leb** %6, align 8
  br label %201

193:                                              ; preds = %94, %82
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %13, align 4
  %196 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %15, align 8
  %198 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %197)
  %199 = load i32, i32* %13, align 4
  %200 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %199)
  store %struct.ubifs_scan_leb* %200, %struct.ubifs_scan_leb** %6, align 8
  br label %201

201:                                              ; preds = %193, %186, %173, %36
  %202 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %6, align 8
  ret %struct.ubifs_scan_leb* %202
}

declare dso_local %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_scan_leb*) #1

declare dso_local i32 @dbg_scan(i8*, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_err(i8*) #1

declare dso_local i32 @ubifs_add_snod(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, ...) #1

declare dso_local i32 @ubifs_end_scan(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i32, i32) #1

declare dso_local i32 @ubifs_scanned_corruption(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb*) #1

declare dso_local %struct.ubifs_scan_leb* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
