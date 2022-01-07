; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i64, i64, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@GIF_QD_LOCKED = common dso_local global i32 0, align 4
@GFS2_QUOTA_ON = common dso_local global i64 0, align 8
@QDF_USER = common dso_local global i32 0, align 4
@qd_lru_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"exceeded\00", align 1
@USRQUOTA = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@QUOTA_NL_BHARDWARN = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@gt_quota_warn_period = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QUOTA_NL_BSOFTWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"warning\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_check(%struct.gfs2_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_quota_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 2
  %15 = call %struct.gfs2_sbd* @GFS2_SB(i32* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @GIF_QD_LOCKED, align 4
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %189

22:                                               ; preds = %3
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GFS2_QUOTA_ON, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %189

30:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %184, %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %32, %37
  br i1 %38, label %39, label %187

39:                                               ; preds = %31
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %41 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %44, i64 %46
  %48 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %47, align 8
  store %struct.gfs2_quota_data* %48, %struct.gfs2_quota_data** %9, align 8
  %49 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %50 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load i32, i32* @QDF_USER, align 4
  %56 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %57 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %56, i32 0, i32 3
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %54, %39
  %61 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %62 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @QDF_USER, align 4
  %68 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %69 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %68, i32 0, i32 3
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %60
  br label %184

73:                                               ; preds = %66, %54
  %74 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %75 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @be64_to_cpu(i32 %77)
  store i64 %78, i64* %10, align 8
  %79 = call i32 @spin_lock(i32* @qd_lru_lock)
  %80 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %81 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %10, align 8
  %85 = call i32 @spin_unlock(i32* @qd_lru_lock)
  %86 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %87 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @be64_to_cpu(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %126

92:                                               ; preds = %73
  %93 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %94 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @be64_to_cpu(i32 %96)
  %98 = load i64, i64* %10, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %92
  %101 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %102 = call i32 @print_message(%struct.gfs2_quota_data* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @QDF_USER, align 4
  %104 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %105 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %104, i32 0, i32 3
  %106 = call i64 @test_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @USRQUOTA, align 4
  br label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @GRPQUOTA, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %115 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %118 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @QUOTA_NL_BHARDWARN, align 4
  %123 = call i32 @quota_send_warning(i32 %113, i64 %116, i32 %121, i32 %122)
  %124 = load i32, i32* @EDQUOT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %12, align 4
  br label %187

126:                                              ; preds = %92, %73
  %127 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %128 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @be64_to_cpu(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %182

133:                                              ; preds = %126
  %134 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %135 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @be64_to_cpu(i32 %137)
  %139 = load i64, i64* %10, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %182

141:                                              ; preds = %133
  %142 = load i64, i64* @jiffies, align 8
  %143 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %144 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %147 = load i32, i32* @gt_quota_warn_period, align 4
  %148 = call i32 @gfs2_tune_get(%struct.gfs2_sbd* %146, i32 %147)
  %149 = load i32, i32* @HZ, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %145, %151
  %153 = call i64 @time_after_eq(i64 %142, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %141
  %156 = load i32, i32* @QDF_USER, align 4
  %157 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %158 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %157, i32 0, i32 3
  %159 = call i64 @test_bit(i32 %156, i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* @USRQUOTA, align 4
  br label %165

163:                                              ; preds = %155
  %164 = load i32, i32* @GRPQUOTA, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %168 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %171 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %170, i32 0, i32 0
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @QUOTA_NL_BSOFTWARN, align 4
  %176 = call i32 @quota_send_warning(i32 %166, i64 %169, i32 %174, i32 %175)
  %177 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %178 = call i32 @print_message(%struct.gfs2_quota_data* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %178, i32* %12, align 4
  %179 = load i64, i64* @jiffies, align 8
  %180 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %181 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %165, %141, %133, %126
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183, %72
  %185 = load i32, i32* %11, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %31

187:                                              ; preds = %112, %31
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %187, %29, %21
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @print_message(%struct.gfs2_quota_data*, i8*) #1

declare dso_local i32 @quota_send_warning(i32, i64, i32, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
