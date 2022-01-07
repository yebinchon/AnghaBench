; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_move_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_move_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_3__*, %struct.vfsmount* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vfsmount = type { i32, %struct.vfsmount*, %struct.TYPE_3__* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@namespace_sem = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*)* @do_move_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_move_mount(%struct.path* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %11 = call i32 @capable(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %197

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %197

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %29 = call i32 @kern_path(i8* %27, i32 %28, %struct.path* %6)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %197

34:                                               ; preds = %26
  %35 = call i32 @down_write(i32* @namespace_sem)
  %36 = load %struct.path*, %struct.path** %4, align 8
  %37 = call i32 @__follow_down(%struct.path* %36, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %188

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.path*, %struct.path** %4, align 8
  %45 = getelementptr inbounds %struct.path, %struct.path* %44, i32 0, i32 1
  %46 = load %struct.vfsmount*, %struct.vfsmount** %45, align 8
  %47 = call i32 @check_mnt(%struct.vfsmount* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %51 = load %struct.vfsmount*, %struct.vfsmount** %50, align 8
  %52 = call i32 @check_mnt(%struct.vfsmount* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %41
  br label %188

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.path*, %struct.path** %4, align 8
  %59 = getelementptr inbounds %struct.path, %struct.path* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.path*, %struct.path** %4, align 8
  %66 = getelementptr inbounds %struct.path, %struct.path* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i64 @IS_DEADDIR(%struct.TYPE_4__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %180

73:                                               ; preds = %55
  %74 = load %struct.path*, %struct.path** %4, align 8
  %75 = getelementptr inbounds %struct.path, %struct.path* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = call i64 @d_unlinked(%struct.TYPE_3__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %180

80:                                               ; preds = %73
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  %83 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %86 = load %struct.vfsmount*, %struct.vfsmount** %85, align 8
  %87 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = icmp ne %struct.TYPE_3__* %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %180

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %93 = load %struct.vfsmount*, %struct.vfsmount** %92, align 8
  %94 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %95 = load %struct.vfsmount*, %struct.vfsmount** %94, align 8
  %96 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %95, i32 0, i32 1
  %97 = load %struct.vfsmount*, %struct.vfsmount** %96, align 8
  %98 = icmp eq %struct.vfsmount* %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %180

100:                                              ; preds = %91
  %101 = load %struct.path*, %struct.path** %4, align 8
  %102 = getelementptr inbounds %struct.path, %struct.path* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @S_ISDIR(i32 %107)
  %109 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @S_ISDIR(i32 %114)
  %116 = icmp ne i64 %108, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %100
  br label %180

118:                                              ; preds = %100
  %119 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %120 = load %struct.vfsmount*, %struct.vfsmount** %119, align 8
  %121 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %120, i32 0, i32 1
  %122 = load %struct.vfsmount*, %struct.vfsmount** %121, align 8
  %123 = icmp ne %struct.vfsmount* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %126 = load %struct.vfsmount*, %struct.vfsmount** %125, align 8
  %127 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %126, i32 0, i32 1
  %128 = load %struct.vfsmount*, %struct.vfsmount** %127, align 8
  %129 = call i64 @IS_MNT_SHARED(%struct.vfsmount* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %180

132:                                              ; preds = %124, %118
  %133 = load %struct.path*, %struct.path** %4, align 8
  %134 = getelementptr inbounds %struct.path, %struct.path* %133, i32 0, i32 1
  %135 = load %struct.vfsmount*, %struct.vfsmount** %134, align 8
  %136 = call i64 @IS_MNT_SHARED(%struct.vfsmount* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %140 = load %struct.vfsmount*, %struct.vfsmount** %139, align 8
  %141 = call i64 @tree_contains_unbindable(%struct.vfsmount* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %180

144:                                              ; preds = %138, %132
  %145 = load i32, i32* @ELOOP, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %9, align 4
  %147 = load %struct.path*, %struct.path** %4, align 8
  %148 = getelementptr inbounds %struct.path, %struct.path* %147, i32 0, i32 1
  %149 = load %struct.vfsmount*, %struct.vfsmount** %148, align 8
  store %struct.vfsmount* %149, %struct.vfsmount** %8, align 8
  br label %150

150:                                              ; preds = %163, %144
  %151 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %152 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %151, i32 0, i32 1
  %153 = load %struct.vfsmount*, %struct.vfsmount** %152, align 8
  %154 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %155 = icmp ne %struct.vfsmount* %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %158 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %159 = load %struct.vfsmount*, %struct.vfsmount** %158, align 8
  %160 = icmp eq %struct.vfsmount* %157, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %180

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %165 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %164, i32 0, i32 1
  %166 = load %struct.vfsmount*, %struct.vfsmount** %165, align 8
  store %struct.vfsmount* %166, %struct.vfsmount** %8, align 8
  br label %150

167:                                              ; preds = %150
  %168 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %169 = load %struct.vfsmount*, %struct.vfsmount** %168, align 8
  %170 = load %struct.path*, %struct.path** %4, align 8
  %171 = call i32 @attach_recursive_mnt(%struct.vfsmount* %169, %struct.path* %170, %struct.path* %7)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %180

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %177 = load %struct.vfsmount*, %struct.vfsmount** %176, align 8
  %178 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %177, i32 0, i32 0
  %179 = call i32 @list_del_init(i32* %178)
  br label %180

180:                                              ; preds = %175, %174, %161, %143, %131, %117, %99, %90, %79, %72
  %181 = load %struct.path*, %struct.path** %4, align 8
  %182 = getelementptr inbounds %struct.path, %struct.path* %181, i32 0, i32 0
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  br label %188

188:                                              ; preds = %180, %54, %40
  %189 = call i32 @up_write(i32* @namespace_sem)
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = call i32 @path_put(%struct.path* %7)
  br label %194

194:                                              ; preds = %192, %188
  %195 = call i32 @path_put(%struct.path* %6)
  %196 = load i32, i32* %9, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %194, %32, %23, %13
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__follow_down(%struct.path*, i32) #1

declare dso_local i32 @check_mnt(%struct.vfsmount*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_DEADDIR(%struct.TYPE_4__*) #1

declare dso_local i64 @d_unlinked(%struct.TYPE_3__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @IS_MNT_SHARED(%struct.vfsmount*) #1

declare dso_local i64 @tree_contains_unbindable(%struct.vfsmount*) #1

declare dso_local i32 @attach_recursive_mnt(%struct.vfsmount*, %struct.path*, %struct.path*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
