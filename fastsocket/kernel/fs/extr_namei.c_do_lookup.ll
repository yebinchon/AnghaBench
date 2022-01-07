; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_do_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_do_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dentry*, %struct.vfsmount* }
%struct.dentry = type { %struct.inode*, %struct.TYPE_4__* }
%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* }
%struct.TYPE_4__ = type { i64 }
%struct.vfsmount = type { i32 }
%struct.qstr = type { i8*, i64 }
%struct.path = type { %struct.dentry*, %struct.vfsmount* }

@LOOKUP_CONTINUE = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.qstr*, %struct.path*)* @do_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lookup(%struct.nameidata* %0, %struct.qstr* %1, %struct.path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  %15 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %16 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.vfsmount*, %struct.vfsmount** %17, align 8
  store %struct.vfsmount* %18, %struct.vfsmount** %8, align 8
  %19 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.dentry*, %struct.dentry** %21, align 8
  %23 = load %struct.qstr*, %struct.qstr** %6, align 8
  %24 = call %struct.dentry* @__d_lookup(%struct.dentry* %22, %struct.qstr* %23)
  store %struct.dentry* %24, %struct.dentry** %9, align 8
  %25 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.dentry*, %struct.dentry** %9, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %89

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %150, %31
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %154

45:                                               ; preds = %37, %32
  br label %46

46:                                               ; preds = %166, %149, %45
  %47 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %48 = load %struct.path*, %struct.path** %7, align 8
  %49 = getelementptr inbounds %struct.path, %struct.path* %48, i32 0, i32 1
  store %struct.vfsmount* %47, %struct.vfsmount** %49, align 8
  %50 = load %struct.dentry*, %struct.dentry** %9, align 8
  %51 = load %struct.path*, %struct.path** %7, align 8
  %52 = getelementptr inbounds %struct.path, %struct.path* %51, i32 0, i32 0
  store %struct.dentry* %50, %struct.dentry** %52, align 8
  %53 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @LOOKUP_CONTINUE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %46
  %60 = load %struct.qstr*, %struct.qstr** %6, align 8
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.qstr*, %struct.qstr** %6, align 8
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %70, %59, %46
  %75 = load %struct.path*, %struct.path** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @follow_managed(%struct.path* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.path*, %struct.path** %7, align 8
  %85 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %86 = call i32 @path_put_conditional(%struct.path* %84, %struct.nameidata* %85)
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %4, align 4
  br label %170

89:                                               ; preds = %160, %30
  %90 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %91 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.dentry*, %struct.dentry** %92, align 8
  store %struct.dentry* %93, %struct.dentry** %11, align 8
  %94 = load %struct.dentry*, %struct.dentry** %11, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 0
  %96 = load %struct.inode*, %struct.inode** %95, align 8
  store %struct.inode* %96, %struct.inode** %12, align 8
  %97 = load %struct.inode*, %struct.inode** %12, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = call i32 @mutex_lock(i32* %98)
  %100 = load %struct.dentry*, %struct.dentry** %11, align 8
  %101 = load %struct.qstr*, %struct.qstr** %6, align 8
  %102 = call %struct.dentry* @d_lookup(%struct.dentry* %100, %struct.qstr* %101)
  store %struct.dentry* %102, %struct.dentry** %9, align 8
  %103 = load %struct.dentry*, %struct.dentry** %9, align 8
  %104 = icmp ne %struct.dentry* %103, null
  br i1 %104, label %150, label %105

105:                                              ; preds = %89
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  %108 = call %struct.dentry* @ERR_PTR(i32 %107)
  store %struct.dentry* %108, %struct.dentry** %9, align 8
  %109 = load %struct.inode*, %struct.inode** %12, align 8
  %110 = call i64 @IS_DEADDIR(%struct.inode* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %141

113:                                              ; preds = %105
  %114 = load %struct.dentry*, %struct.dentry** %11, align 8
  %115 = load %struct.qstr*, %struct.qstr** %6, align 8
  %116 = call %struct.dentry* @d_alloc(%struct.dentry* %114, %struct.qstr* %115)
  store %struct.dentry* %116, %struct.dentry** %14, align 8
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  %119 = call %struct.dentry* @ERR_PTR(i32 %118)
  store %struct.dentry* %119, %struct.dentry** %9, align 8
  %120 = load %struct.dentry*, %struct.dentry** %14, align 8
  %121 = icmp ne %struct.dentry* %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %113
  %123 = load %struct.inode*, %struct.inode** %12, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)*, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)** %126, align 8
  %128 = load %struct.inode*, %struct.inode** %12, align 8
  %129 = load %struct.dentry*, %struct.dentry** %14, align 8
  %130 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %131 = call %struct.dentry* %127(%struct.inode* %128, %struct.dentry* %129, %struct.nameidata* %130)
  store %struct.dentry* %131, %struct.dentry** %9, align 8
  %132 = load %struct.dentry*, %struct.dentry** %9, align 8
  %133 = icmp ne %struct.dentry* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load %struct.dentry*, %struct.dentry** %14, align 8
  %136 = call i32 @dput(%struct.dentry* %135)
  br label %139

137:                                              ; preds = %122
  %138 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %138, %struct.dentry** %9, align 8
  br label %139

139:                                              ; preds = %137, %134
  br label %140

140:                                              ; preds = %139, %113
  br label %141

141:                                              ; preds = %140, %112
  %142 = load %struct.inode*, %struct.inode** %12, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load %struct.dentry*, %struct.dentry** %9, align 8
  %146 = call i64 @IS_ERR(%struct.dentry* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %167

149:                                              ; preds = %141
  br label %46

150:                                              ; preds = %89
  %151 = load %struct.inode*, %struct.inode** %12, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  br label %32

154:                                              ; preds = %44
  %155 = load %struct.dentry*, %struct.dentry** %9, align 8
  %156 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %157 = call %struct.dentry* @do_revalidate(%struct.dentry* %155, %struct.nameidata* %156)
  store %struct.dentry* %157, %struct.dentry** %9, align 8
  %158 = load %struct.dentry*, %struct.dentry** %9, align 8
  %159 = icmp ne %struct.dentry* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  br label %89

161:                                              ; preds = %154
  %162 = load %struct.dentry*, %struct.dentry** %9, align 8
  %163 = call i64 @IS_ERR(%struct.dentry* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %167

166:                                              ; preds = %161
  br label %46

167:                                              ; preds = %165, %148
  %168 = load %struct.dentry*, %struct.dentry** %9, align 8
  %169 = call i32 @PTR_ERR(%struct.dentry* %168)
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %167, %87
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.dentry* @__d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @follow_managed(%struct.path*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @path_put_conditional(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @IS_DEADDIR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @do_revalidate(%struct.dentry*, %struct.nameidata*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
