; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_hold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_5__*, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.gfs2_sbd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GIF_QD_LOCKED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@QUOTA_USER = common dso_local global i32 0, align 4
@QUOTA_GROUP = common dso_local global i32 0, align 4
@NO_QUOTA_CHANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_quota_data**, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 1
  %13 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %8, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %20 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %25, align 8
  store %struct.gfs2_quota_data** %26, %struct.gfs2_quota_data*** %9, align 8
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %27, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %21
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %40 = load i32, i32* @GIF_QD_LOCKED, align 4
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %42 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %41, i32 0, i32 2
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %39, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38, %21
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %167

52:                                               ; preds = %38
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %54 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %167

60:                                               ; preds = %52
  %61 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %62 = load i32, i32* @QUOTA_USER, align 4
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %64 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %68 = call i32 @qdsb_get(%struct.gfs2_sbd* %61, i32 %62, i64 %66, %struct.gfs2_quota_data** %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %159

72:                                               ; preds = %60
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %80 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %79, i32 1
  store %struct.gfs2_quota_data** %80, %struct.gfs2_quota_data*** %9, align 8
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %82 = load i32, i32* @QUOTA_GROUP, align 4
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %84 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %88 = call i32 @qdsb_get(%struct.gfs2_sbd* %81, i32 %82, i64 %86, %struct.gfs2_quota_data** %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %72
  br label %159

92:                                               ; preds = %72
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %94 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %100 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %99, i32 1
  store %struct.gfs2_quota_data** %100, %struct.gfs2_quota_data*** %9, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @NO_QUOTA_CHANGE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %92
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %107 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %105, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %113 = load i32, i32* @QUOTA_USER, align 4
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %116 = call i32 @qdsb_get(%struct.gfs2_sbd* %112, i32 %113, i64 %114, %struct.gfs2_quota_data** %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %159

120:                                              ; preds = %111
  %121 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %122 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %128 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %127, i32 1
  store %struct.gfs2_quota_data** %128, %struct.gfs2_quota_data*** %9, align 8
  br label %129

129:                                              ; preds = %120, %104, %92
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @NO_QUOTA_CHANGE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %129
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %136 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %134, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %133
  %141 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %142 = load i32, i32* @QUOTA_GROUP, align 4
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %145 = call i32 @qdsb_get(%struct.gfs2_sbd* %141, i32 %142, i64 %143, %struct.gfs2_quota_data** %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %159

149:                                              ; preds = %140
  %150 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %151 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %157 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %156, i32 1
  store %struct.gfs2_quota_data** %157, %struct.gfs2_quota_data*** %9, align 8
  br label %158

158:                                              ; preds = %149, %133, %129
  br label %159

159:                                              ; preds = %158, %148, %119, %91, %71
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %164 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %165, %59, %49
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @gfs2_rs_alloc(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qdsb_get(%struct.gfs2_sbd*, i32, i64, %struct.gfs2_quota_data**) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
