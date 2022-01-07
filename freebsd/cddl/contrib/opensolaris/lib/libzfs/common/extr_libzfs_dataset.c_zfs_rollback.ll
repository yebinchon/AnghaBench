; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_rollback.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i64, i32, i32 }

@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@rollback_destroy = common dso_local global i32 0, align 4
@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot rollback '%s'\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"there is a snapshot or bookmark more recent than '%s'\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"'%s' is not found among snapshots of '%s'\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_rollback(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [1024 x i8], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i1 [ true, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %40 = call i64 @zfs_prop_get_int(%struct.TYPE_14__* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %45, %28
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = load i32, i32* @B_FALSE, align 4
  %51 = load i32, i32* @rollback_destroy, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @zfs_iter_snapshots(%struct.TYPE_14__* %49, i32 %50, i32 %51, %struct.TYPE_15__* %8, i64 %52, i32 0)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = load i32, i32* @rollback_destroy, align 4
  %56 = call i32 @zfs_iter_bookmarks(%struct.TYPE_14__* %54, i32 %55, %struct.TYPE_15__* %8)
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %188

61:                                               ; preds = %48
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = call i64 @zfs_which_resv_prop(%struct.TYPE_14__* %68, i32* %14)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %188

72:                                               ; preds = %67
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %75 = call i64 @zfs_prop_get_int(%struct.TYPE_14__* %73, i32 %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @zfs_prop_get_int(%struct.TYPE_14__* %77, i32 %78)
  %80 = icmp eq i64 %76, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %72, %61
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @lzc_rollback_to(i32 %85, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %152

92:                                               ; preds = %82
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %94 = load i32, i32* @TEXT_DOMAIN, align 4
  %95 = call i8* @dgettext(i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snprintf(i8* %93, i32 1024, i8* %95, i32 %98)
  %100 = load i32, i32* %9, align 4
  switch i32 %100, label %143 [
    i32 130, label %101
    i32 128, label %117
    i32 129, label %136
  ]

101:                                              ; preds = %92
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TEXT_DOMAIN, align 4
  %106 = call i8* @dgettext(i32 %105, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, i32, ...) @zfs_error_aux(i32 %104, i8* %106, i32 %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @EZFS_EXISTS, align 4
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %116 = call i32 @zfs_error(i32 %113, i32 %114, i8* %115)
  br label %150

117:                                              ; preds = %92
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TEXT_DOMAIN, align 4
  %122 = call i8* @dgettext(i32 %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, i32, ...) @zfs_error_aux(i32 %120, i8* %122, i32 %125, i32 %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @EZFS_NOENT, align 4
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %135 = call i32 @zfs_error(i32 %132, i32 %133, i8* %134)
  br label %150

136:                                              ; preds = %92
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @EZFS_BADTYPE, align 4
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %142 = call i32 @zfs_error(i32 %139, i32 %140, i8* %141)
  br label %150

143:                                              ; preds = %92
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %149 = call i32 @zfs_standard_error(i32 %146, i32 %147, i8* %148)
  br label %150

150:                                              ; preds = %143, %136, %117, %101
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %4, align 4
  br label %188

152:                                              ; preds = %82
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %186

158:                                              ; preds = %152
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call %struct.TYPE_14__* @make_dataset_handle(i32 %161, i32 %164)
  store %struct.TYPE_14__* %165, %struct.TYPE_14__** %5, align 8
  %166 = icmp ne %struct.TYPE_14__* %165, null
  br i1 %166, label %167, label %186

167:                                              ; preds = %158
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %167
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %173 = call i64 @zfs_prop_get_int(%struct.TYPE_14__* %171, i32 %172)
  store i64 %173, i64* %13, align 8
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %13, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load i64, i64* %13, align 8
  %181 = call i32 @zfs_prop_set_int(%struct.TYPE_14__* %178, i32 %179, i64 %180)
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %177, %170
  br label %183

183:                                              ; preds = %182, %167
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %185 = call i32 @zfs_close(%struct.TYPE_14__* %184)
  br label %186

186:                                              ; preds = %183, %158, %152
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %150, %71, %60
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @zfs_iter_snapshots(%struct.TYPE_14__*, i32, i32, %struct.TYPE_15__*, i64, i32) #2

declare dso_local i32 @zfs_iter_bookmarks(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #2

declare dso_local i64 @zfs_which_resv_prop(%struct.TYPE_14__*, i32*) #2

declare dso_local i32 @lzc_rollback_to(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error_aux(i32, i8*, i32, ...) #2

declare dso_local i32 @zfs_error(i32, i32, i8*) #2

declare dso_local i32 @zfs_standard_error(i32, i32, i8*) #2

declare dso_local %struct.TYPE_14__* @make_dataset_handle(i32, i32) #2

declare dso_local i32 @zfs_prop_set_int(%struct.TYPE_14__*, i32, i64) #2

declare dso_local i32 @zfs_close(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
