; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c___write_versions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c___write_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@nfsd_serv = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@NFSD_CLEAR = common dso_local global i32 0, align 4
@NFSD_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i32 0, align 4
@NFSD_AVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%c%d\00", align 1
@NFSD_TEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@NFSD_SUPPORTED_MINOR_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" %c4.%u\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64)* @__write_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__write_versions(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %8, align 8
  store i64 0, i64* %16, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %138

21:                                               ; preds = %3
  %22 = load i64, i64* @nfsd_serv, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @EBUSY, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %241

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 10
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %241

38:                                               ; preds = %27
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @qword_get(i8** %8, i8* %44, i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i64, i64* @EINVAL, align 8
  %51 = sub nsw i64 0, %50
  store i64 %51, i64* %4, align 8
  br label %241

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %131, %52
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %11, align 1
  %56 = load i8, i8* %11, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 43
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i8, i8* %11, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br i1 %62, label %63, label %67

63:                                               ; preds = %59, %53
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i32 @simple_strtol(i8* %65, i8** %10, i32 0)
  store i32 %66, i32* %13, align 4
  br label %70

67:                                               ; preds = %59
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @simple_strtol(i8* %68, i8** %10, i32 0)
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %107

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* @EINVAL, align 8
  %80 = sub nsw i64 0, %79
  store i64 %80, i64* %4, align 8
  br label %241

81:                                               ; preds = %75
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i32 @simple_strtoul(i8* %83, i32* null, i32 0)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i64, i64* @EINVAL, align 8
  %89 = sub nsw i64 0, %88
  store i64 %89, i64* %4, align 8
  br label %241

90:                                               ; preds = %81
  %91 = load i32, i32* %15, align 4
  %92 = load i8, i8* %11, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 45
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @NFSD_CLEAR, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @NFSD_SET, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = call i64 @nfsd_minorversion(i32 %91, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i64, i64* @EINVAL, align 8
  %105 = sub nsw i64 0, %104
  store i64 %105, i64* %4, align 8
  br label %241

106:                                              ; preds = %99
  br label %125

107:                                              ; preds = %70
  %108 = load i32, i32* %13, align 4
  switch i32 %108, label %121 [
    i32 2, label %109
    i32 3, label %109
    i32 4, label %109
  ]

109:                                              ; preds = %107, %107, %107
  %110 = load i32, i32* %13, align 4
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 45
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @NFSD_CLEAR, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @NFSD_SET, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = call i64 @nfsd_vers(i32 %110, i32 %119)
  br label %124

121:                                              ; preds = %107
  %122 = load i64, i64* @EINVAL, align 8
  %123 = sub nsw i64 0, %122
  store i64 %123, i64* %4, align 8
  br label %241

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %106
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i8*, i8** %9, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %9, align 8
  br label %131

131:                                              ; preds = %125
  %132 = load i8*, i8** %9, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @qword_get(i8** %8, i8* %132, i64 %133)
  store i32 %134, i32* %12, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %53, label %136

136:                                              ; preds = %131
  %137 = call i32 (...) @nfsd_reset_versions()
  br label %138

138:                                              ; preds = %136, %3
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %139 = load i32, i32* @SIMPLE_TRANSACTION_LIMIT, align 4
  store i32 %139, i32* %14, align 4
  store i32 2, i32* %13, align 4
  br label %140

140:                                              ; preds = %177, %138
  %141 = load i32, i32* %13, align 4
  %142 = icmp sle i32 %141, 4
  br i1 %142, label %143, label %180

143:                                              ; preds = %140
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @NFSD_AVAIL, align 4
  %146 = call i64 @nfsd_vers(i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %143
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* %14, align 4
  %151 = load i8*, i8** %17, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @NFSD_TEST, align 4
  %154 = call i64 @nfsd_vers(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 43, i32 45
  %158 = load i32, i32* %13, align 4
  %159 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %149, i32 %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %151, i32 %157, i32 %158)
  store i32 %159, i32* %12, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  br label %180

164:                                              ; preds = %148
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %14, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i8*, i8** %6, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %6, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %16, align 8
  %175 = add nsw i64 %174, %173
  store i64 %175, i64* %16, align 8
  br label %176

176:                                              ; preds = %164, %143
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %140

180:                                              ; preds = %163, %140
  %181 = load i32, i32* @NFSD_AVAIL, align 4
  %182 = call i64 @nfsd_vers(i32 4, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %226

184:                                              ; preds = %180
  store i32 1, i32* %15, align 4
  br label %185

185:                                              ; preds = %222, %184
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* @NFSD_SUPPORTED_MINOR_VERSION, align 4
  %188 = icmp ule i32 %186, %187
  br i1 %188, label %189, label %225

189:                                              ; preds = %185
  %190 = load i8*, i8** %6, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @NFSD_TEST, align 4
  %193 = call i64 @nfsd_vers(i32 4, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* @NFSD_TEST, align 4
  %198 = call i64 @nfsd_minorversion(i32 %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %195, %189
  %201 = phi i1 [ false, %189 ], [ %199, %195 ]
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 43, i32 45
  %204 = load i32, i32* %15, align 4
  %205 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %190, i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %203, i32 %204)
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %225

210:                                              ; preds = %200
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %14, align 4
  %213 = sub nsw i32 %212, %211
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i8*, i8** %6, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8* %217, i8** %6, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %16, align 8
  %221 = add nsw i64 %220, %219
  store i64 %221, i64* %16, align 8
  br label %222

222:                                              ; preds = %210
  %223 = load i32, i32* %15, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %185

225:                                              ; preds = %209, %185
  br label %226

226:                                              ; preds = %225, %180
  %227 = load i8*, i8** %6, align 8
  %228 = load i32, i32* %14, align 4
  %229 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %227, i32 %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %14, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load i64, i64* @EINVAL, align 8
  %235 = sub nsw i64 0, %234
  store i64 %235, i64* %4, align 8
  br label %241

236:                                              ; preds = %226
  %237 = load i64, i64* %16, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  store i64 %240, i64* %4, align 8
  br label %241

241:                                              ; preds = %236, %233, %121, %103, %87, %78, %49, %35, %24
  %242 = load i64, i64* %4, align 8
  ret i64 %242
}

declare dso_local i32 @qword_get(i8**, i8*, i64) #1

declare dso_local i32 @simple_strtol(i8*, i8**, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i64 @nfsd_minorversion(i32, i32) #1

declare dso_local i64 @nfsd_vers(i32, i32) #1

declare dso_local i32 @nfsd_reset_versions(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
