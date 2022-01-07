; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_utimes.c_utimes_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_utimes.c_utimes_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.timespec = type { i64, i32 }
%struct.iattr = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@UTIME_NOW = common dso_local global i64 0, align 8
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@UTIME_OMIT = common dso_local global i64 0, align 8
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_TIMES_SET = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.timespec*)* @utimes_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utimes_common(%struct.path* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iattr, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %8 = load %struct.path*, %struct.path** %3, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.path*, %struct.path** %3, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mnt_want_write(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %164

20:                                               ; preds = %2
  %21 = load %struct.timespec*, %struct.timespec** %4, align 8
  %22 = icmp ne %struct.timespec* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.timespec*, %struct.timespec** %4, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i64 0
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UTIME_NOW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.timespec*, %struct.timespec** %4, align 8
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %31, i64 1
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UTIME_NOW, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store %struct.timespec* null, %struct.timespec** %4, align 8
  br label %38

38:                                               ; preds = %37, %30, %23, %20
  %39 = load i32, i32* @ATTR_CTIME, align 4
  %40 = load i32, i32* @ATTR_MTIME, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ATTR_ATIME, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.timespec*, %struct.timespec** %4, align 8
  %46 = icmp ne %struct.timespec* %45, null
  br i1 %46, label %47, label %128

47:                                               ; preds = %38
  %48 = load %struct.timespec*, %struct.timespec** %4, align 8
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %48, i64 0
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UTIME_OMIT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @ATTR_ATIME, align 4
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %56
  store i32 %59, i32* %57, align 8
  br label %85

60:                                               ; preds = %47
  %61 = load %struct.timespec*, %struct.timespec** %4, align 8
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i64 0
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @UTIME_NOW, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load %struct.timespec*, %struct.timespec** %4, align 8
  %69 = getelementptr inbounds %struct.timespec, %struct.timespec* %68, i64 0
  %70 = getelementptr inbounds %struct.timespec, %struct.timespec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.timespec*, %struct.timespec** %4, align 8
  %75 = getelementptr inbounds %struct.timespec, %struct.timespec* %74, i64 0
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* @ATTR_ATIME_SET, align 4
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %67, %60
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.timespec*, %struct.timespec** %4, align 8
  %87 = getelementptr inbounds %struct.timespec, %struct.timespec* %86, i64 1
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @UTIME_OMIT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @ATTR_MTIME, align 4
  %94 = xor i32 %93, -1
  %95 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %94
  store i32 %97, i32* %95, align 8
  br label %123

98:                                               ; preds = %85
  %99 = load %struct.timespec*, %struct.timespec** %4, align 8
  %100 = getelementptr inbounds %struct.timespec, %struct.timespec* %99, i64 1
  %101 = getelementptr inbounds %struct.timespec, %struct.timespec* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @UTIME_NOW, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %98
  %106 = load %struct.timespec*, %struct.timespec** %4, align 8
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %106, i64 1
  %108 = getelementptr inbounds %struct.timespec, %struct.timespec* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.timespec*, %struct.timespec** %4, align 8
  %113 = getelementptr inbounds %struct.timespec, %struct.timespec* %112, i64 1
  %114 = getelementptr inbounds %struct.timespec, %struct.timespec* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* @ATTR_MTIME_SET, align 4
  %119 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %105, %98
  br label %123

123:                                              ; preds = %122, %92
  %124 = load i32, i32* @ATTR_TIMES_SET, align 4
  %125 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 8
  br label %148

128:                                              ; preds = %38
  %129 = load i32, i32* @EACCES, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = call i64 @IS_IMMUTABLE(%struct.inode* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %159

135:                                              ; preds = %128
  %136 = load %struct.inode*, %struct.inode** %7, align 8
  %137 = call i32 @is_owner_or_cap(%struct.inode* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load %struct.inode*, %struct.inode** %7, align 8
  %141 = load i32, i32* @MAY_WRITE, align 4
  %142 = call i32 @inode_permission(%struct.inode* %140, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %159

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %135
  br label %148

148:                                              ; preds = %147, %123
  %149 = load %struct.inode*, %struct.inode** %7, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 0
  %151 = call i32 @mutex_lock(i32* %150)
  %152 = load %struct.path*, %struct.path** %3, align 8
  %153 = getelementptr inbounds %struct.path, %struct.path* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @notify_change(%struct.TYPE_6__* %154, %struct.iattr* %6)
  store i32 %155, i32* %5, align 4
  %156 = load %struct.inode*, %struct.inode** %7, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 0
  %158 = call i32 @mutex_unlock(i32* %157)
  br label %159

159:                                              ; preds = %148, %145, %134
  %160 = load %struct.path*, %struct.path** %3, align 8
  %161 = getelementptr inbounds %struct.path, %struct.path* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @mnt_drop_write(i32 %162)
  br label %164

164:                                              ; preds = %159, %19
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @notify_change(%struct.TYPE_6__*, %struct.iattr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mnt_drop_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
