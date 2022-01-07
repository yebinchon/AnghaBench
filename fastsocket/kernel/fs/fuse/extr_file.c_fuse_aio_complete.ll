; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_aio_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_aio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_priv = type { i32, i64, i32, i64, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.path }
%struct.path = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32, i64 }
%struct.fuse_inode = type { i64 }

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_io_priv*, i32, i64)* @fuse_aio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_aio_complete(%struct.fuse_io_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.fuse_io_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.path*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca %struct.fuse_inode*, align 8
  store %struct.fuse_io_priv* %0, %struct.fuse_io_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %13, i32 0, i32 6
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %20 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ %21, %23 ], [ %25, %24 ]
  %28 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %29 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %49

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %35 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %41 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %33
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %47 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %38, %30
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %51 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  store i32 %53, i32* %7, align 4
  %54 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %55 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %54, i32 0, i32 6
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %140, label %59

59:                                               ; preds = %49
  %60 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %61 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %66 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %8, align 8
  br label %132

69:                                               ; preds = %59
  %70 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %71 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %76 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* @EIO, align 8
  %81 = sub nsw i64 0, %80
  store i64 %81, i64* %8, align 8
  br label %131

82:                                               ; preds = %74, %69
  %83 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %84 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %89 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  br label %95

91:                                               ; preds = %82
  %92 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %93 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i64 [ %90, %87 ], [ %94, %91 ]
  store i64 %96, i64* %8, align 8
  %97 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %98 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %97, i32 0, i32 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = call i32 @is_sync_kiocb(%struct.TYPE_7__* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %95
  %103 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %104 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %103, i32 0, i32 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store %struct.path* %108, %struct.path** %9, align 8
  %109 = load %struct.path*, %struct.path** %9, align 8
  %110 = getelementptr inbounds %struct.path, %struct.path* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.inode*, %struct.inode** %112, align 8
  store %struct.inode* %113, %struct.inode** %10, align 8
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %114)
  store %struct.fuse_conn* %115, %struct.fuse_conn** %11, align 8
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %116)
  store %struct.fuse_inode* %117, %struct.fuse_inode** %12, align 8
  %118 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %119 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %118, i32 0, i32 0
  %120 = call i32 @spin_lock(i32* %119)
  %121 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %122 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = load %struct.fuse_inode*, %struct.fuse_inode** %12, align 8
  %126 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %128 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  br label %130

130:                                              ; preds = %102, %95
  br label %131

131:                                              ; preds = %130, %79
  br label %132

132:                                              ; preds = %131, %64
  %133 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %134 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %133, i32 0, i32 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @aio_complete(%struct.TYPE_7__* %135, i64 %136, i32 0)
  %138 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %139 = call i32 @kfree(%struct.fuse_io_priv* %138)
  br label %140

140:                                              ; preds = %132, %49
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @is_sync_kiocb(%struct.TYPE_7__*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @aio_complete(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @kfree(%struct.fuse_io_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
