; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_rw_verify_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_rw_verify_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@FLOCK_VERIFY_READ = common dso_local global i32 0, align 4
@FLOCK_VERIFY_WRITE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAX_RW_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rw_verify_area(i32 %0, %struct.file* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.file* %1, %struct.file** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %106

28:                                               ; preds = %4
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %34, %35
  %37 = icmp slt i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %106

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = call i64 @mandatory_lock(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i1 [ false, %45 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @READ, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @FLOCK_VERIFY_READ, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @FLOCK_VERIFY_WRITE, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = load %struct.file*, %struct.file** %7, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @locks_mandatory_area(i32 %68, %struct.inode* %69, %struct.file* %70, i64 %71, i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %106

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.file*, %struct.file** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @READ, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @MAY_READ, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @MAY_WRITE, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = call i32 @security_file_permission(%struct.file* %80, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %5, align 4
  br label %106

95:                                               ; preds = %88
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @MAX_RW_COUNT, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* @MAX_RW_COUNT, align 8
  br label %103

101:                                              ; preds = %95
  %102 = load i64, i64* %9, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i64 [ %100, %99 ], [ %102, %101 ]
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %93, %76, %43, %26
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mandatory_lock(%struct.inode*) #1

declare dso_local i32 @locks_mandatory_area(i32, %struct.inode*, %struct.file*, i64, i64) #1

declare dso_local i32 @security_file_permission(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
