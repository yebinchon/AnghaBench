; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_dump_filesystem.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_dump_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i64, i64, i8** }
%struct.TYPE_9__ = type { i32, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@ZFS_IOC_OBJSET_STATS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"WARNING: could not send %s@%s: does not exist\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@dump_snapshot = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"WARNING: could not send %s@%s:\0Aincremental source (%s@%s) does not exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"WARNING: could not send %s@%s:\0Aincremental source (%s@%s) is not earlier than it\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @dump_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_filesystem(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %9, align 8
  %14 = load i8*, i8** @B_FALSE, align 8
  store i8* %14, i8** %10, align 8
  %15 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @snprintf(i32 %17, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ZFS_IOC_OBJSET_STATS, align 4
  %31 = call i64 @ioctl(i32 %29, i32 %30, %struct.TYPE_9__* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* @TEXT_DOMAIN, align 4
  %36 = call i8* @dgettext(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %34, i8* %36, i8* %39, i8* %42)
  %44 = load i8*, i8** @B_TRUE, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  store i32 0, i32* %3, align 4
  br label %218

47:                                               ; preds = %2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @snprintf(i32 %59, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ZFS_IOC_OBJSET_STATS, align 4
  %73 = call i64 @ioctl(i32 %71, i32 %72, %struct.TYPE_9__* %11)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = load i8*, i8** @B_TRUE, align 8
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %75, %57
  br label %78

78:                                               ; preds = %77, %52, %47
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 7
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  store i8* null, i8** %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store i8* null, i8** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  store i8* null, i8** %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %78
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %78
  %97 = load i8*, i8** @B_TRUE, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @get_snap_txg(%struct.TYPE_11__* %113, i8* %116, i8* %119)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %110, %105, %100
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @get_snap_txg(%struct.TYPE_11__* %134, i8* %137, i8* %140)
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %131, %126, %121
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = load i32, i32* @dump_snapshot, align 4
  %145 = load i8*, i8** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @zfs_iter_snapshots_sorted(%struct.TYPE_8__* %143, i32 %144, i8* %145, i32 %146, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %173, label %153

153:                                              ; preds = %142
  %154 = load i32, i32* @stderr, align 4
  %155 = load i32, i32* @TEXT_DOMAIN, align 4
  %156 = call i8* @dgettext(i32 %155, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %154, i8* %156, i8* %159, i8* %162, i8* %165, i8* %168)
  %170 = load i8*, i8** @B_TRUE, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  br label %216

173:                                              ; preds = %142
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %215, label %178

178:                                              ; preds = %173
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %200

183:                                              ; preds = %178
  %184 = load i32, i32* @stderr, align 4
  %185 = load i32, i32* @TEXT_DOMAIN, align 4
  %186 = call i8* @dgettext(i32 %185, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %184, i8* %186, i8* %189, i8* %192, i8* %195, i8* %198)
  br label %211

200:                                              ; preds = %178
  %201 = load i32, i32* @stderr, align 4
  %202 = load i32, i32* @TEXT_DOMAIN, align 4
  %203 = call i8* @dgettext(i32 %202, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %201, i8* %203, i8* %206, i8* %209)
  br label %211

211:                                              ; preds = %200, %183
  %212 = load i8*, i8** @B_TRUE, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %211, %173
  br label %216

216:                                              ; preds = %215, %153
  %217 = load i32, i32* %6, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %216, %33
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @get_snap_txg(%struct.TYPE_11__*, i8*, i8*) #2

declare dso_local i32 @zfs_iter_snapshots_sorted(%struct.TYPE_8__*, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
