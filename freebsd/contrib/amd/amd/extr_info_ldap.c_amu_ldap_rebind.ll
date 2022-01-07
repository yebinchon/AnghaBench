; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_ldap.c_amu_ldap_rebind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_ldap.c_amu_ldap_rebind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i32*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"-> amu_ldap_rebind\0A\00", align 1
@AMD_LDAP_TTL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Re-establishing ldap connection\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"amu_ldap_rebind: timestamp OK\0A\00", align 1
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Unable to ldap_open to %s:%d\0A\00", align 1
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to ldap_bind to %s:%d as %s\0A\00", align 1
@gopt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"ldap_enable_cache(%ld) is not available on this system!\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Exhausted list of ldap servers, looping.\0A\00", align 1
@XLOG_USER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Unable to (re)bind to any ldap hosts\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@LDAP_OPT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@LDAP_VERSION2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @amu_ldap_rebind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amu_ldap_rebind(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = call i64 @clocktime(i32* null)
  store i64 %12, i64* %7, align 8
  %13 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load i64, i64* @AMD_LDAP_TTL, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @amu_ldap_unbind(i32* %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %39

37:                                               ; preds = %18
  %38 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %123

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %1
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %116, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %119

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %5, align 8
  br label %48

48:                                               ; preds = %109, %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %113

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32* @ldap_open(i32 %54, i32 %57)
  store i32* %58, i32** %4, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load i32, i32* @XLOG_WARNING, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @plog(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %67)
  br label %109

69:                                               ; preds = %51
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ldap_bind_s(i32* %70, i32 %73, i32 %76, i32 %79)
  %81 = load i64, i64* @LDAP_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %69
  %84 = load i32, i32* @XLOG_WARNING, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @plog(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %90, i32 %93)
  br label %109

95:                                               ; preds = %69
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gopt, i32 0, i32 1), align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @XLOG_WARNING, align 4
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gopt, i32 0, i32 1), align 8
  %101 = call i32 (i32, i8*, ...) @plog(i32 %99, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  store i32 0, i32* %2, align 4
  br label %123

109:                                              ; preds = %83, %60
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %5, align 8
  br label %48

113:                                              ; preds = %48
  %114 = load i32, i32* @XLOG_WARNING, align 4
  %115 = call i32 (i32, i8*, ...) @plog(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %41

119:                                              ; preds = %41
  %120 = load i32, i32* @XLOG_USER, align 4
  %121 = call i32 (i32, i8*, ...) @plog(i32 %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* @ENOENT, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %102, %37
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i64 @clocktime(i32*) #1

declare dso_local i32 @dlog(i8*, ...) #1

declare dso_local i32 @amu_ldap_unbind(i32*) #1

declare dso_local i32* @ldap_open(i32, i32) #1

declare dso_local i32 @plog(i32, i8*, ...) #1

declare dso_local i64 @ldap_bind_s(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
