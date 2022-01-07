; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_ldap.c_get_ldap_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_ldap.c_get_ldap_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.timeval = type { i32, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"-> get_ldap_timestamp: map <%s>\0A\00", align 1
@AMD_LDAP_TSFILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Getting timestamp for map %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Filter is: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Base is: %s\0A\00", align 1
@gopt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@AMD_LDAP_RETRIES = common dso_local global i32 0, align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i32 0, align 4
@XLOG_USER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Timestamp LDAP search attempt %d failed: %s\0A\00", align 1
@LDAP_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"get_ldap_timestamp: unbinding...\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Timestamp search failed, trying again...\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"LDAP timestamp search failed: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"No timestamp entry for map %s\0A\00", align 1
@AMD_LDAP_TSATTR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Missing timestamp value for map %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"TS value is:%s:\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Unable to decode ldap timestamp %s for map %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Nonpositive timestamp %ld for map %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Empty timestamp value for map %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"The timestamp for %s is %ld (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64*)* @get_ldap_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ldap_timestamp(%struct.TYPE_5__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 3, i32* %25, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = trunc i64 %20 to i32
  %28 = load i32, i32* @AMD_LDAP_TSFILTER, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @xsnprintf(i8* %22, i32 %27, i32 %28, i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gopt, i32 0, i32 0), align 4
  %35 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %83, %3
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @AMD_LDAP_RETRIES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gopt, i32 0, i32 0), align 4
  %45 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %46 = call i32 @ldap_search_st(i32* %43, i32 %44, i32 %45, i8* %22, i32 0, i32 0, %struct.timeval* %8, i32** %16)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @LDAP_SUCCESS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %86

51:                                               ; preds = %40
  %52 = load i32*, i32** %16, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @ldap_msgfree(i32* %55)
  store i32* null, i32** %16, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @XLOG_USER, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %14, align 4
  %62 = call i8* @ldap_err2string(i32 %61)
  %63 = call i32 (i32, i8*, ...) @plog(i32 %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %60, i8* %62)
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @LDAP_TIMEOUT, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @amu_ldap_unbind(i32* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = call i64 @amu_ldap_rebind(%struct.TYPE_5__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @ENOENT, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %206

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %57
  %82 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %36

86:                                               ; preds = %50, %36
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @LDAP_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i64*, i64** %7, align 8
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @XLOG_USER, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i8* @ldap_err2string(i32 %93)
  %95 = call i32 (i32, i8*, ...) @plog(i32 %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = load i32*, i32** %16, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @ldap_msgfree(i32* %99)
  br label %101

101:                                              ; preds = %98, %90
  %102 = load i32, i32* @ENOENT, align 4
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %206

103:                                              ; preds = %86
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @ldap_count_entries(i32* %106, i32* %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load i32, i32* @XLOG_USER, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 (i32, i8*, ...) @plog(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %113)
  %115 = load i64*, i64** %7, align 8
  store i64 0, i64* %115, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 @ldap_msgfree(i32* %116)
  %118 = load i32, i32* @ENOENT, align 4
  store i32 %118, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %206

119:                                              ; preds = %103
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = call i32* @ldap_first_entry(i32* %122, i32* %123)
  store i32* %124, i32** %17, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = load i32, i32* @AMD_LDAP_TSATTR, align 4
  %130 = call i8** @ldap_get_values(i32* %127, i32* %128, i32 %129)
  store i8** %130, i8*** %9, align 8
  %131 = load i8**, i8*** %9, align 8
  %132 = call i64 @ldap_count_values(i8** %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %119
  %135 = load i32, i32* @XLOG_USER, align 4
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 (i32, i8*, ...) @plog(i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %136)
  %138 = load i64*, i64** %7, align 8
  store i64 0, i64* %138, align 8
  %139 = load i8**, i8*** %9, align 8
  %140 = call i32 @ldap_value_free(i8** %139)
  %141 = load i32*, i32** %16, align 8
  %142 = call i32 @ldap_msgfree(i32* %141)
  %143 = load i32, i32* @ENOENT, align 4
  store i32 %143, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %206

144:                                              ; preds = %119
  %145 = load i8**, i8*** %9, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %147)
  %149 = load i8**, i8*** %9, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %188

153:                                              ; preds = %144
  %154 = load i8**, i8*** %9, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @strtol(i8* %156, i8** %10, i32 10)
  %158 = load i64*, i64** %7, align 8
  store i64 %157, i64* %158, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i8**, i8*** %9, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp eq i8* %159, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %153
  %165 = load i32, i32* @XLOG_USER, align 4
  %166 = load i8**, i8*** %9, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 (i32, i8*, ...) @plog(i32 %165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %168, i8* %169)
  %171 = load i32, i32* @ENOENT, align 4
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %164, %153
  %173 = load i64*, i64** %7, align 8
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %172
  %180 = load i32, i32* @XLOG_USER, align 4
  %181 = load i64*, i64** %7, align 8
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = load i8*, i8** %6, align 8
  %185 = call i32 (i32, i8*, ...) @plog(i32 %180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %183, i8* %184)
  %186 = load i32, i32* @ENOENT, align 4
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %179, %172
  br label %194

188:                                              ; preds = %144
  %189 = load i32, i32* @XLOG_USER, align 4
  %190 = load i8*, i8** %6, align 8
  %191 = call i32 (i32, i8*, ...) @plog(i32 %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %190)
  %192 = load i64*, i64** %7, align 8
  store i64 0, i64* %192, align 8
  %193 = load i32, i32* @ENOENT, align 4
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %188, %187
  %195 = load i8**, i8*** %9, align 8
  %196 = call i32 @ldap_value_free(i8** %195)
  %197 = load i32*, i32** %16, align 8
  %198 = call i32 @ldap_msgfree(i32* %197)
  %199 = load i8*, i8** %6, align 8
  %200 = load i64*, i64** %7, align 8
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = load i32, i32* %14, align 4
  %204 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i8* %199, i32 %202, i32 %203)
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %206

206:                                              ; preds = %194, %134, %111, %101, %78
  %207 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dlog(i8*, ...) #2

declare dso_local i32 @xsnprintf(i8*, i32, i32, i8*) #2

declare dso_local i32 @ldap_search_st(i32*, i32, i32, i8*, i32, i32, %struct.timeval*, i32**) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i8* @ldap_err2string(i32) #2

declare dso_local i32 @amu_ldap_unbind(i32*) #2

declare dso_local i64 @amu_ldap_rebind(%struct.TYPE_5__*) #2

declare dso_local i32 @ldap_count_entries(i32*, i32*) #2

declare dso_local i32* @ldap_first_entry(i32*, i32*) #2

declare dso_local i8** @ldap_get_values(i32*, i32*, i32) #2

declare dso_local i64 @ldap_count_values(i8**) #2

declare dso_local i32 @ldap_value_free(i8**) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
