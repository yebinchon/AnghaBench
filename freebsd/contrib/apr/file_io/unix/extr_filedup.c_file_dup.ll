; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_filedup.c_file_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_filedup.c_file_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32, i32, i32, i64, i64, i64, i32 }

@APR_EINVAL = common dso_local global i32 0, align 4
@APR_FOPEN_NOCLEANUP = common dso_local global i32 0, align 4
@APR_INHERIT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@apr_unix_file_cleanup = common dso_local global i32 0, align 4
@apr_unix_child_file_cleanup = common dso_local global i32 0, align 4
@APR_THREAD_MUTEX_DEFAULT = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, %struct.TYPE_4__*, i32*, i32)* @file_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_dup(%struct.TYPE_4__** %0, %struct.TYPE_4__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %69

14:                                               ; preds = %4
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @APR_EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %179

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dup2(i32 %23, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @APR_FOPEN_NOCLEANUP, align 4
  %34 = load i32, i32* @APR_INHERIT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %5, align 4
  br label %179

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @F_GETFD, align 4
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @errno, align 4
  store i32 %52, i32* %5, align 4
  br label %179

53:                                               ; preds = %43
  %54 = load i32, i32* @FD_CLOEXEC, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @F_SETFD, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32, i32, ...) @fcntl(i32 %60, i32 %61, i32 %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @errno, align 4
  store i32 %66, i32* %5, align 4
  br label %179

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %20
  br label %74

69:                                               ; preds = %4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dup(i32 %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %69, %68
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @errno, align 4
  store i32 %78, i32* %5, align 4
  br label %179

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @apr_pcalloc(i32* %83, i32 72)
  %85 = inttoptr i64 %84 to %struct.TYPE_4__*
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %86, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32* %87, i32** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %82, %79
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @apr_pstrdup(i32* %96, i32 %99)
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 10
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 8
  store i64 %106, i64* %109, align 8
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %95
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %115
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @apr_palloc(i32* %122, i32 %125)
  %127 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 7
  store i64 %126, i64* %129, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  store i32 %132, i32* %135, align 8
  br label %136

136:                                              ; preds = %121, %115, %95
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  store i32 %139, i32* %142, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %153

151:                                              ; preds = %136
  %152 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %152, i32* %5, align 4
  br label %179

153:                                              ; preds = %136
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @APR_INHERIT, align 4
  %158 = load i32, i32* @APR_FOPEN_NOCLEANUP, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = and i32 %156, %160
  %162 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = bitcast %struct.TYPE_4__* %170 to i8*
  %172 = load i32, i32* @apr_unix_file_cleanup, align 4
  %173 = load i32, i32* @apr_unix_child_file_cleanup, align 4
  %174 = call i32 @apr_pool_cleanup_register(i32* %168, i8* %171, i32 %172, i32 %173)
  %175 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  store i32* null, i32** %177, align 8
  %178 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %153, %151, %77, %65, %51, %41, %18
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i64 @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i64 @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
