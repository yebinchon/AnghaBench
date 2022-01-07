; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_changelist.c_change_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_changelist.c_change_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i64, i32, i64, i32, i8*, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i8*, i32, i32* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZPROP_SRC_DEFAULT = common dso_local global i64 0, align 8
@ZPROP_SRC_INHERITED = common dso_local global i64 0, align 8
@CL_GATHER_MOUNT_ALWAYS = common dso_local global i32 0, align 4
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @change_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_one(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @ZFS_IS_VOLUME(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZFS_PROP_NAME, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %24, %2
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %18 to i32
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %37 = load i32, i32* @B_FALSE, align 4
  %38 = call i64 @zfs_prop_get(i32* %31, i64 %34, i8* %20, i32 %35, i64* %11, i8* %36, i32 64, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @zfs_close(i32* %41)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %196

43:                                               ; preds = %30, %24
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ZPROP_INVAL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %18 to i32
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %56 = load i32, i32* @B_FALSE, align 4
  %57 = call i64 @zfs_prop_get(i32* %50, i64 %53, i8* %20, i32 %54, i64* %12, i8* %55, i32 64, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @zfs_close(i32* %60)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %196

62:                                               ; preds = %49, %43
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %94, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @ZPROP_SRC_DEFAULT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %94, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @ZPROP_SRC_INHERITED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %76
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ZPROP_INVAL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %192

86:                                               ; preds = %80
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @ZPROP_SRC_DEFAULT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @ZPROP_SRC_INHERITED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %192

94:                                               ; preds = %90, %86, %76, %72, %67, %62
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @zfs_get_handle(i32* %95)
  %97 = call %struct.TYPE_8__* @zfs_alloc(i32 %96, i32 40)
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %10, align 8
  %98 = icmp eq %struct.TYPE_8__* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @zfs_close(i32* %100)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %196

102:                                              ; preds = %94
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  store i32* %103, i32** %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CL_GATHER_MOUNT_ALWAYS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %102
  %113 = load i32*, i32** %4, align 8
  %114 = call i64 @zfs_is_mounted(i32* %113, i32* null)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %112, %102
  %117 = phi i1 [ true, %102 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @zfs_is_shared(i32* %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %127 = call i64 @zfs_prop_get_int(i32* %125, i32 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load i8*, i8** @B_TRUE, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = call i64 (...) @getzoneid()
  %134 = load i64, i64* @GLOBAL_ZONEID, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %116
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i8*, i8** @B_TRUE, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 8
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %141, %136, %116
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @uu_list_node_init(%struct.TYPE_8__* %146, i32* %148, i32 %151)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %145
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %162 = call i32 @uu_list_find(i32 %160, %struct.TYPE_8__* %161, i32* null, i32* %14)
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @uu_list_insert(i32 %165, %struct.TYPE_8__* %166, i32 %167)
  br label %182

169:                                              ; preds = %145
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @uu_list_first(i32 %175)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %178 = call i64 @uu_list_insert_before(i32 %172, i32 %176, %struct.TYPE_8__* %177)
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @verify(i32 %180)
  br label %182

182:                                              ; preds = %169, %157
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = load i32*, i32** %4, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @zfs_iter_children(i32* %188, i32 (i32*, i8*)* @change_one, i8* %189)
  store i32 %190, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %196

191:                                              ; preds = %182
  br label %195

192:                                              ; preds = %90, %80
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @zfs_close(i32* %193)
  br label %195

195:                                              ; preds = %192, %191
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %196

196:                                              ; preds = %195, %187, %99, %59, %40
  %197 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ZFS_IS_VOLUME(i32*) #2

declare dso_local i64 @zfs_prop_get(i32*, i64, i8*, i32, i64*, i8*, i32, i32) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local %struct.TYPE_8__* @zfs_alloc(i32, i32) #2

declare dso_local i32 @zfs_get_handle(i32*) #2

declare dso_local i64 @zfs_is_mounted(i32*, i32*) #2

declare dso_local i32 @zfs_is_shared(i32*) #2

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #2

declare dso_local i64 @getzoneid(...) #2

declare dso_local i32 @uu_list_node_init(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @uu_list_find(i32, %struct.TYPE_8__*, i32*, i32*) #2

declare dso_local i32 @uu_list_insert(i32, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @uu_list_insert_before(i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @uu_list_first(i32) #2

declare dso_local i32 @zfs_iter_children(i32*, i32 (i32*, i8*)*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
