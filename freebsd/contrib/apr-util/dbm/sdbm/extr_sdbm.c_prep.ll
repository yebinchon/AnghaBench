; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/dbm/sdbm/extr_sdbm.c_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/dbm/sdbm/extr_sdbm.c_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, i32* }

@APR_FOPEN_WRITE = common dso_local global i32 0, align 4
@SDBM_RDONLY = common dso_local global i32 0, align 4
@APR_FOPEN_SHARELOCK = common dso_local global i32 0, align 4
@SDBM_SHARED = common dso_local global i32 0, align 4
@APR_FOPEN_BINARY = common dso_local global i32 0, align 4
@APR_FOPEN_READ = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_FLOCK_SHARED = common dso_local global i32 0, align 4
@APR_FLOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@database_cleanup = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__**, i8*, i8*, i32, i32, i32*)* @prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep(%struct.TYPE_9__** %0, i8* %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %17 = call %struct.TYPE_9__* @malloc(i32 32)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %14, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %19 = call i32 @memset(%struct.TYPE_9__* %18, i32 0, i32 32)
  %20 = load i32*, i32** %13, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @APR_FOPEN_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @SDBM_RDONLY, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %6
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @APR_FOPEN_SHARELOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* @SDBM_SHARED, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @APR_FOPEN_SHARELOCK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %38, %33
  %49 = load i32, i32* @APR_FOPEN_BINARY, align 4
  %50 = load i32, i32* @APR_FOPEN_READ, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @apr_file_open(i32** %55, i8* %56, i32 %57, i32 %58, i32* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* @APR_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %116

64:                                               ; preds = %48
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @apr_file_open(i32** %66, i8* %67, i32 %68, i32 %69, i32* %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* @APR_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %116

75:                                               ; preds = %64
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SDBM_RDONLY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @APR_FLOCK_SHARED, align 4
  br label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @APR_FLOCK_EXCLUSIVE, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = call i32 @apr_sdbm_lock(%struct.TYPE_9__* %76, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @APR_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %116

93:                                               ; preds = %87
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SDBM_SHARED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %102 = call i32 @apr_sdbm_unlock(%struct.TYPE_9__* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* @APR_SUCCESS, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %116

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %93
  %108 = load i32*, i32** %13, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %110 = load i32, i32* @database_cleanup, align 4
  %111 = load i32, i32* @apr_pool_cleanup_null, align 4
  %112 = call i32 @apr_pool_cleanup_register(i32* %108, %struct.TYPE_9__* %109, i32 %110, i32 %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %114 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %113, %struct.TYPE_9__** %114, align 8
  %115 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %115, i32* %7, align 4
  br label %153

116:                                              ; preds = %105, %92, %74, %63
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %128 = call i32 @apr_sdbm_unlock(%struct.TYPE_9__* %127)
  br label %129

129:                                              ; preds = %126, %121, %116
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @apr_file_close(i32* %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @apr_file_close(i32* %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %151 = call i32 @free(%struct.TYPE_9__* %150)
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %107
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @apr_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @apr_sdbm_lock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @apr_sdbm_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @apr_file_close(i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
