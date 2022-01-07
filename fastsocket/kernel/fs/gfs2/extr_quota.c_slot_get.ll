; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_slot_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_slot_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i8**, i32 }

@qd_lru_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*)* @slot_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slot_get(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_quota_data*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %3, align 8
  %9 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %4, align 8
  store i32 0, i32* %6, align 4
  store i8 0, i8* %8, align 1
  %14 = call i32 @spin_lock(i32* @qd_lru_lock)
  %15 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %16 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @spin_unlock(i32* @qd_lru_lock)
  store i32 0, i32* %2, align 4
  br label %121

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %55, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %36 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %8, align 1
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 255
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %59

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %30

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %23

58:                                               ; preds = %23
  br label %113

59:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp ult i32 %61, 8
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 1, %66
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %75

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %60

75:                                               ; preds = %70, %60
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = mul i32 8, %77
  %79 = mul i32 %76, %78
  %80 = load i32, i32* %6, align 4
  %81 = mul i32 %80, 8
  %82 = add i32 %79, %81
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %82, %83
  %85 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %86 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %88 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %91 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp uge i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %75
  br label %113

95:                                               ; preds = %75
  %96 = load i32, i32* %7, align 4
  %97 = shl i32 1, %96
  %98 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %99 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %109, %97
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %107, align 1
  %112 = call i32 @spin_unlock(i32* @qd_lru_lock)
  store i32 0, i32* %2, align 4
  br label %121

113:                                              ; preds = %94, %58
  %114 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %115 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 4
  %118 = call i32 @spin_unlock(i32* @qd_lru_lock)
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %113, %95, %20
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
