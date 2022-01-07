; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_expkey_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_expkey_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.auth_domain = type { i32 }
%struct.svc_expkey = type { i32, %struct.TYPE_2__, i32, i32, %struct.auth_domain* }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"expkey_parse: '%s'\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"found domain %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"found fsidtype %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"found fsid length %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Path seems to be <%s>\0A\00", align 1
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Found the path %s\0A\00", align 1
@svc_expkey_cache = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"expkey_parse: err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @expkey_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expkey_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auth_domain*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.svc_expkey, align 8
  %15 = alloca %struct.svc_expkey*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.auth_domain* null, %struct.auth_domain** %10, align 8
  store %struct.svc_expkey* null, %struct.svc_expkey** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %196

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %173

43:                                               ; preds = %27
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @qword_get(i8** %6, i8* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %173

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call %struct.auth_domain* @auth_domain_find(i8* %54)
  store %struct.auth_domain* %55, %struct.auth_domain** %10, align 8
  %56 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  %57 = icmp ne %struct.auth_domain* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %173

59:                                               ; preds = %51
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = call i32 @qword_get(i8** %6, i8* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %173

69:                                               ; preds = %59
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @simple_strtoul(i8* %70, i8** %13, i32 10)
  store i32 %71, i32* %12, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %173

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @key_len(i32 %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %173

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = call i32 @qword_get(i8** %6, i8* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %173

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @key_len(i32 %93)
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %173

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = call i64 @get_expiry(i8** %6)
  %101 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %173

108:                                              ; preds = %97
  %109 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  %110 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 4
  store %struct.auth_domain* %109, %struct.auth_domain** %110, align 8
  %111 = load i32, i32* %12, align 4
  %112 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @memcpy(i32 %114, i8* %115, i32 %116)
  %118 = call %struct.svc_expkey* @svc_expkey_lookup(%struct.svc_expkey* %14)
  store %struct.svc_expkey* %118, %struct.svc_expkey** %15, align 8
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  %121 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %122 = icmp ne %struct.svc_expkey* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %108
  br label %173

124:                                              ; preds = %108
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %11, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = call i32 @qword_get(i8** %6, i8* %127, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %173

133:                                              ; preds = %124
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %134)
  store i32 0, i32* %11, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load i32, i32* @CACHE_NEGATIVE, align 4
  %140 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = call i32 @set_bit(i32 %139, i64* %141)
  %143 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %144 = call %struct.svc_expkey* @svc_expkey_update(%struct.svc_expkey* %14, %struct.svc_expkey* %143)
  store %struct.svc_expkey* %144, %struct.svc_expkey** %15, align 8
  %145 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %146 = icmp ne %struct.svc_expkey* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %138
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %147, %138
  br label %171

151:                                              ; preds = %133
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 2
  %154 = call i32 @kern_path(i8* %152, i32 0, i32* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %173

158:                                              ; preds = %151
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %159)
  %161 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %162 = call %struct.svc_expkey* @svc_expkey_update(%struct.svc_expkey* %14, %struct.svc_expkey* %161)
  store %struct.svc_expkey* %162, %struct.svc_expkey** %15, align 8
  %163 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %164 = icmp ne %struct.svc_expkey* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %165, %158
  %169 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %14, i32 0, i32 2
  %170 = call i32 @path_put(i32* %169)
  br label %171

171:                                              ; preds = %168, %150
  %172 = call i32 (...) @cache_flush()
  br label %173

173:                                              ; preds = %171, %157, %132, %123, %107, %96, %88, %82, %75, %68, %58, %50, %42
  %174 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %175 = icmp ne %struct.svc_expkey* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load %struct.svc_expkey*, %struct.svc_expkey** %15, align 8
  %178 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %177, i32 0, i32 1
  %179 = call i32 @cache_put(%struct.TYPE_2__* %178, i32* @svc_expkey_cache)
  br label %180

180:                                              ; preds = %176, %173
  %181 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  %182 = icmp ne %struct.auth_domain* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.auth_domain*, %struct.auth_domain** %10, align 8
  %185 = call i32 @auth_domain_put(%struct.auth_domain* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @kfree(i8* %187)
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32, i32* %11, align 4
  %193 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %191, %186
  %195 = load i32, i32* %11, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %194, %24
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local %struct.auth_domain* @auth_domain_find(i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @key_len(i32) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.svc_expkey* @svc_expkey_lookup(%struct.svc_expkey*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local %struct.svc_expkey* @svc_expkey_update(%struct.svc_expkey*, %struct.svc_expkey*) #1

declare dso_local i32 @kern_path(i8*, i32, i32*) #1

declare dso_local i32 @path_put(i32*) #1

declare dso_local i32 @cache_flush(...) #1

declare dso_local i32 @cache_put(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @auth_domain_put(%struct.auth_domain*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
