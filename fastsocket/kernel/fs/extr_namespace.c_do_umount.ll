; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_umount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vfsmount* }
%struct.vfsmount = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.super_block*)* }

@umount_list = common dso_local global i32 0, align 4
@MNT_EXPIRE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@MNT_FORCE = common dso_local global i32 0, align 4
@MNT_DETACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@namespace_sem = common dso_local global i32 0, align 4
@vfsmount_lock = common dso_local global i32 0, align 4
@event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, i32)* @do_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_umount(%struct.vfsmount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %9 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i32 0, i32 3
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %6, align 8
  %11 = load i32, i32* @umount_list, align 4
  %12 = call i32 @LIST_HEAD(i32 %11)
  %13 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @security_sb_umount(%struct.vfsmount* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %157

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MNT_EXPIRE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.vfsmount*, %struct.vfsmount** %31, align 8
  %33 = icmp eq %struct.vfsmount* %26, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MNT_FORCE, align 4
  %37 = load i32, i32* @MNT_DETACH, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34, %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %157

44:                                               ; preds = %34
  %45 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %46 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %45, i32 0, i32 2
  %47 = call i32 @atomic_read(i32* %46)
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %157

52:                                               ; preds = %44
  %53 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %54 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %53, i32 0, i32 1
  %55 = call i32 @xchg(i32* %54, i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %157

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %20
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @MNT_FORCE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.super_block*, %struct.super_block** %6, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %70, align 8
  %72 = icmp ne i32 (%struct.super_block*)* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.super_block*, %struct.super_block** %6, align 8
  %75 = getelementptr inbounds %struct.super_block, %struct.super_block* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %77, align 8
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = call i32 %78(%struct.super_block* %79)
  br label %81

81:                                               ; preds = %73, %66, %61
  %82 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.vfsmount*, %struct.vfsmount** %87, align 8
  %89 = icmp eq %struct.vfsmount* %82, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %81
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @MNT_DETACH, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %90
  %96 = load %struct.super_block*, %struct.super_block** %6, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 1
  %98 = call i32 @down_write(i32* %97)
  %99 = load %struct.super_block*, %struct.super_block** %6, align 8
  %100 = getelementptr inbounds %struct.super_block, %struct.super_block* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MS_RDONLY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %95
  %106 = load %struct.super_block*, %struct.super_block** %6, align 8
  %107 = load i32, i32* @MS_RDONLY, align 4
  %108 = call i32 @do_remount_sb(%struct.super_block* %106, i32 %107, i32* null, i32 0)
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %95
  %110 = load %struct.super_block*, %struct.super_block** %6, align 8
  %111 = getelementptr inbounds %struct.super_block, %struct.super_block* %110, i32 0, i32 1
  %112 = call i32 @up_write(i32* %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %157

114:                                              ; preds = %90, %81
  %115 = call i32 @down_write(i32* @namespace_sem)
  %116 = call i32 @spin_lock(i32* @vfsmount_lock)
  %117 = load i32, i32* @event, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @event, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @MNT_DETACH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %125 = call i32 @shrink_submounts(%struct.vfsmount* %124, i32* @umount_list)
  br label %126

126:                                              ; preds = %123, %114
  %127 = load i32, i32* @EBUSY, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @MNT_DETACH, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %135 = call i32 @propagate_mount_busy(%struct.vfsmount* %134, i32 2)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %133, %126
  %138 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %139 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %138, i32 0, i32 0
  %140 = call i32 @list_empty(i32* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %144 = call i32 @umount_tree(%struct.vfsmount* %143, i32 1, i32* @umount_list)
  br label %145

145:                                              ; preds = %142, %137
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %145, %133
  %147 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %152 = call i32 @security_sb_umount_busy(%struct.vfsmount* %151)
  br label %153

153:                                              ; preds = %150, %146
  %154 = call i32 @up_write(i32* @namespace_sem)
  %155 = call i32 @release_mounts(i32* @umount_list)
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %109, %57, %49, %41, %18
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @security_sb_umount(%struct.vfsmount*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @do_remount_sb(%struct.super_block*, i32, i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @shrink_submounts(%struct.vfsmount*, i32*) #1

declare dso_local i32 @propagate_mount_busy(%struct.vfsmount*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @umount_tree(%struct.vfsmount*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @security_sb_umount_busy(%struct.vfsmount*) #1

declare dso_local i32 @release_mounts(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
