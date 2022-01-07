; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_d_automount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_d_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.autofs_sb_info = type { i32, i32 }
%struct.autofs_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dentry=%p %.*s\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AUTOFS_INF_PENDING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.path*)* @autofs4_d_automount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @autofs4_d_automount(%struct.path* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.autofs_info*, align 8
  %7 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %3, align 8
  %8 = load %struct.path*, %struct.path** %3, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %13)
  store %struct.autofs_sb_info* %14, %struct.autofs_sb_info** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %15)
  store %struct.autofs_info* %16, %struct.autofs_info** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %17, i32 %21, i32 %25)
  %27 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %28 = call i64 @autofs4_oz_mode(%struct.autofs_sb_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store %struct.vfsmount* null, %struct.vfsmount** %2, align 8
  br label %151

31:                                               ; preds = %1
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = call i32 @do_expire_wait(%struct.dentry* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store %struct.vfsmount* null, %struct.vfsmount** %2, align 8
  br label %151

42:                                               ; preds = %36, %31
  %43 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %43, i32 0, i32 1
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.autofs_info*, %struct.autofs_info** %6, align 8
  %47 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %54 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.dentry*, %struct.dentry** %4, align 8
  %57 = call i32 @autofs4_mount_wait(%struct.dentry* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.vfsmount* @ERR_PTR(i32 %61)
  store %struct.vfsmount* %62, %struct.vfsmount** %2, align 8
  br label %151

63:                                               ; preds = %52
  br label %141

64:                                               ; preds = %42
  %65 = load %struct.dentry*, %struct.dentry** %4, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.dentry*, %struct.dentry** %4, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @S_ISLNK(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %79 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  br label %141

81:                                               ; preds = %69, %64
  %82 = load %struct.dentry*, %struct.dentry** %4, align 8
  %83 = call i32 @d_mountpoint(%struct.dentry* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %137, label %85

85:                                               ; preds = %81
  %86 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %87 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 4
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.dentry*, %struct.dentry** %4, align 8
  %92 = call i64 @have_submounts(%struct.dentry* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %96 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %95, i32 0, i32 1
  %97 = call i32 @spin_unlock(i32* %96)
  br label %141

98:                                               ; preds = %90
  br label %108

99:                                               ; preds = %85
  %100 = load %struct.dentry*, %struct.dentry** %4, align 8
  %101 = call i32 @simple_empty(%struct.dentry* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %105 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock(i32* %105)
  br label %141

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %98
  %109 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %110 = load %struct.autofs_info*, %struct.autofs_info** %6, align 8
  %111 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %115 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %114, i32 0, i32 1
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load %struct.dentry*, %struct.dentry** %4, align 8
  %118 = call i32 @autofs4_mount_wait(%struct.dentry* %117)
  store i32 %118, i32* %7, align 4
  %119 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %120 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %119, i32 0, i32 1
  %121 = call i32 @spin_lock(i32* %120)
  %122 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.autofs_info*, %struct.autofs_info** %6, align 8
  %125 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %108
  %131 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %132 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %131, i32 0, i32 1
  %133 = call i32 @spin_unlock(i32* %132)
  %134 = load i32, i32* %7, align 4
  %135 = call %struct.vfsmount* @ERR_PTR(i32 %134)
  store %struct.vfsmount* %135, %struct.vfsmount** %2, align 8
  br label %151

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136, %81
  %138 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %139 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %138, i32 0, i32 1
  %140 = call i32 @spin_unlock(i32* %139)
  br label %141

141:                                              ; preds = %137, %103, %94, %77, %63
  %142 = load %struct.path*, %struct.path** %3, align 8
  %143 = call %struct.dentry* @autofs4_mountpoint_changed(%struct.path* %142)
  store %struct.dentry* %143, %struct.dentry** %4, align 8
  %144 = load %struct.dentry*, %struct.dentry** %4, align 8
  %145 = icmp ne %struct.dentry* %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* @ENOENT, align 4
  %148 = sub nsw i32 0, %147
  %149 = call %struct.vfsmount* @ERR_PTR(i32 %148)
  store %struct.vfsmount* %149, %struct.vfsmount** %2, align 8
  br label %151

150:                                              ; preds = %141
  store %struct.vfsmount* null, %struct.vfsmount** %2, align 8
  br label %151

151:                                              ; preds = %150, %146, %130, %60, %41, %30
  %152 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %152
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @DPRINTK(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i64 @autofs4_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @do_expire_wait(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @autofs4_mount_wait(%struct.dentry*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @d_mountpoint(%struct.dentry*) #1

declare dso_local i64 @have_submounts(%struct.dentry*) #1

declare dso_local i32 @simple_empty(%struct.dentry*) #1

declare dso_local %struct.dentry* @autofs4_mountpoint_changed(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
