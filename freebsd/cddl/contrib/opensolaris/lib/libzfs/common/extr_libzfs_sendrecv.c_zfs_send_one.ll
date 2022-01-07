; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_send_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_send_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i64, i64 }

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@LZC_SEND_FLAG_LARGE_BLOCK = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_EMBED_DATA = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_COMPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"size\09%llu\0A\00", align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"total estimated size is %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot estimate send size: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"warning: cannot send '%s'\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"not an earlier snapshot from the same fs\00", align 1
@EZFS_CROSSTARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"incremental source (%s) does not exist\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"target is busy; if a filesystem, it must not be mounted\00", align 1
@EZFS_BUSY = common dso_local global i32 0, align 4
@EZFS_BADBACKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_send_one(%struct.TYPE_5__* %0, i8* %1, i32 %2, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca [16 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32*, i32** @stdout, align 8
  br label %30

28:                                               ; preds = %22, %4
  %29 = load i32*, i32** @stderr, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32* [ %27, %26 ], [ %29, %28 ]
  store i32* %31, i32** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @LZC_SEND_FLAG_LARGE_BLOCK, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @LZC_SEND_FLAG_EMBED_DATA, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @LZC_SEND_FLAG_COMPRESS, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %55
  store i64 0, i64* %14, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @lzc_send_space(i32 %62, i8* %63, i32 %64, i64* %14)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %59
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @send_print_verbose(i32* %69, i32 %72, i8* %73, i64 %74, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load i32*, i32** %12, align 8
  %83 = load i64, i64* %14, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @fprintf(i32* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %84)
  br label %95

86:                                               ; preds = %68
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %89 = call i32 @zfs_nicenum(i64 %87, i8* %88, i32 16)
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* @TEXT_DOMAIN, align 4
  %92 = call i8* @dgettext(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %94 = call i32 @fprintf(i32* %90, i8* %92, i8* %93)
  br label %95

95:                                               ; preds = %86, %81
  br label %101

96:                                               ; preds = %59
  %97 = load i32*, i32** @stderr, align 8
  %98 = load i32, i32* @errno, align 4
  %99 = call i8* @strerror(i32 %98)
  %100 = call i32 @fprintf(i32* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %96, %95
  br label %102

102:                                              ; preds = %101, %55
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %5, align 4
  br label %180

108:                                              ; preds = %102
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %110 = load i32, i32* @TEXT_DOMAIN, align 4
  %111 = call i8* @dgettext(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @snprintf(i8* %109, i32 1024, i8* %111, i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @lzc_send(i32 %118, i8* %119, i32 %120, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %176

125:                                              ; preds = %108
  %126 = load i32, i32* @errno, align 4
  switch i32 %126, label %171 [
    i32 128, label %127
    i32 137, label %136
    i32 129, label %136
    i32 142, label %153
    i32 141, label %162
    i32 139, label %162
    i32 138, label %162
    i32 136, label %162
    i32 135, label %162
    i32 133, label %162
    i32 132, label %162
    i32 131, label %162
    i32 140, label %162
    i32 130, label %162
  ]

127:                                              ; preds = %125
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* @TEXT_DOMAIN, align 4
  %130 = call i8* @dgettext(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %131 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %128, i8* %130)
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %135 = call i32 @zfs_error(i32* %132, i32 %133, i8* %134)
  store i32 %135, i32* %5, align 4
  br label %180

136:                                              ; preds = %125, %125
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @lzc_exists(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* @TEXT_DOMAIN, align 4
  %145 = call i8* @dgettext(i32 %144, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %143, i8* %145, i8* %146)
  br label %148

148:                                              ; preds = %142, %136
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* @EZFS_NOENT, align 4
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %152 = call i32 @zfs_error(i32* %149, i32 %150, i8* %151)
  store i32 %152, i32* %5, align 4
  br label %180

153:                                              ; preds = %125
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* @TEXT_DOMAIN, align 4
  %156 = call i8* @dgettext(i32 %155, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %157 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %154, i8* %156)
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* @EZFS_BUSY, align 4
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %161 = call i32 @zfs_error(i32* %158, i32 %159, i8* %160)
  store i32 %161, i32* %5, align 4
  br label %180

162:                                              ; preds = %125, %125, %125, %125, %125, %125, %125, %125, %125, %125
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* @errno, align 4
  %165 = call i8* @strerror(i32 %164)
  %166 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %163, i8* %165)
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* @EZFS_BADBACKUP, align 4
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %170 = call i32 @zfs_error(i32* %167, i32 %168, i8* %169)
  store i32 %170, i32* %5, align 4
  br label %180

171:                                              ; preds = %125
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* @errno, align 4
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %175 = call i32 @zfs_standard_error(i32* %172, i32 %173, i8* %174)
  store i32 %175, i32* %5, align 4
  br label %180

176:                                              ; preds = %108
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %171, %162, %153, %148, %127, %106
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @lzc_send_space(i32, i8*, i32, i64*) #1

declare dso_local i32 @send_print_verbose(i32*, i32, i8*, i64, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @zfs_nicenum(i64, i8*, i32) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @lzc_send(i32, i8*, i32, i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @lzc_exists(i32) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
