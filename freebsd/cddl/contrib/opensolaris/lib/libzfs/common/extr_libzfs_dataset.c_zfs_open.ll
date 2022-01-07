; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.zfs_open_bookmarks_cb_data = type { i8*, %struct.TYPE_6__*, i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@zfs_open_bookmarks_cb = common dso_local global i32 0, align 4
@EZFS_NOENT = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @zfs_open(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.zfs_open_bookmarks_cb_data, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i8* @dgettext(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @snprintf(i8* %17, i32 1024, i8* %19, i8* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @B_FALSE, align 4
  %26 = call i32 @zfs_validate_name(i32* %22, i8* %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %32 = call i32 @zfs_error(i32* %29, i32 %30, i8* %31)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %174

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 35)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  store i64 0, i64* @errno, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.TYPE_6__* @make_dataset_handle(i32* %39, i8* %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %8, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* @errno, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %47 = call i32 @zfs_standard_error(i32* %44, i64 %45, i8* %46)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %174

48:                                               ; preds = %38
  br label %124

49:                                               ; preds = %33
  %50 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %11, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %12, align 8
  %54 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 0
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %54, align 8
  %56 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %56, align 8
  %57 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = icmp ult i64 %62, %51
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @strncpy(i8* %53, i8* %66, i32 %72)
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = getelementptr inbounds i8, i8* %53, i64 %78
  store i8 0, i8* %79, align 1
  store i64 0, i64* @errno, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call %struct.TYPE_6__* @make_dataset_handle(i32* %80, i8* %53)
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %13, align 8
  %82 = icmp eq %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %49
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* @errno, align 8
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %87 = call i32 @zfs_standard_error(i32* %84, i64 %85, i8* %86)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %120

88:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %90 = load i32, i32* @zfs_open_bookmarks_cb, align 4
  %91 = call i64 @zfs_iter_bookmarks(%struct.TYPE_6__* %89, i32 %90, %struct.zfs_open_bookmarks_cb_data* %14)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = icmp eq %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* @EZFS_NOENT, align 4
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %101 = call i32 @zfs_error(i32* %98, i32 %99, i8* %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %103 = call i32 @zfs_close(%struct.TYPE_6__* %102)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %120

104:                                              ; preds = %93, %88
  %105 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = icmp eq %struct.TYPE_6__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32*, i32** %5, align 8
  %110 = load i64, i64* @errno, align 8
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %112 = call i32 @zfs_standard_error(i32* %109, i64 %110, i8* %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %114 = call i32 @zfs_close(%struct.TYPE_6__* %113)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %120

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.zfs_open_bookmarks_cb_data, %struct.zfs_open_bookmarks_cb_data* %14, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %8, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %119 = call i32 @zfs_close(%struct.TYPE_6__* %118)
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %115, %108, %97, %83
  %121 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %15, align 4
  switch i32 %122, label %176 [
    i32 0, label %123
    i32 1, label %174
  ]

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %123, %48
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = icmp eq %struct.TYPE_6__* %125, null
  br i1 %126, label %127, label %158

127:                                              ; preds = %124
  %128 = load i8*, i8** %6, align 8
  %129 = call i8* @strchr(i8* %128, i8 signext 64)
  store i8* %129, i8** %16, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i8*, i8** %16, align 8
  store i8 0, i8* %133, align 1
  br label %134

134:                                              ; preds = %132, %127
  store i64 0, i64* @errno, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call %struct.TYPE_6__* @make_dataset_handle(i32* %135, i8* %136)
  store %struct.TYPE_6__* %137, %struct.TYPE_6__** %8, align 8
  %138 = icmp eq %struct.TYPE_6__* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32*, i32** %5, align 8
  %141 = load i64, i64* @errno, align 8
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %143 = call i32 @zfs_standard_error(i32* %140, i64 %141, i8* %142)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %174

144:                                              ; preds = %134
  %145 = load i8*, i8** %16, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i8*, i8** %16, align 8
  store i8 64, i8* %148, align 1
  br label %149

149:                                              ; preds = %147, %144
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @strlcpy(i32 %152, i8* %153, i32 4)
  %155 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %124
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %158
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* @EZFS_BADTYPE, align 4
  %168 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %169 = call i32 @zfs_error(i32* %166, i32 %167, i8* %168)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %171 = call i32 @zfs_close(%struct.TYPE_6__* %170)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %174

172:                                              ; preds = %158
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %173, %struct.TYPE_6__** %4, align 8
  br label %174

174:                                              ; preds = %172, %165, %139, %120, %43, %28
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %175

176:                                              ; preds = %120
  unreachable
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_6__* @make_dataset_handle(i32*, i8*) #1

declare dso_local i32 @zfs_standard_error(i32*, i64, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @zfs_iter_bookmarks(%struct.TYPE_6__*, i32, %struct.zfs_open_bookmarks_cb_data*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
