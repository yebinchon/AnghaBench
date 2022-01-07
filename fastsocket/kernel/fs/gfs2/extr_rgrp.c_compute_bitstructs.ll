; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_compute_bitstructs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_compute_bitstructs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, i32, i32, %struct.gfs2_bitmap*, %struct.gfs2_sbd* }
%struct.gfs2_bitmap = type { i32, i32, i32, i64 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_NBBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"start=%u len=%u offset=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rgrpd*)* @compute_bitstructs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_bitstructs(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  %10 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %10, i32 0, i32 4
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  store %struct.gfs2_sbd* %12, %struct.gfs2_sbd** %4, align 8
  %13 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %179

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.gfs2_bitmap* @kcalloc(i32 %22, i32 24, i32 %23)
  %25 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %25, i32 0, i32 3
  store %struct.gfs2_bitmap* %24, %struct.gfs2_bitmap** %26, align 8
  %27 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %27, i32 0, i32 3
  %29 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %28, align 8
  %30 = icmp ne %struct.gfs2_bitmap* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %179

34:                                               ; preds = %21
  %35 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %125, %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %128

42:                                               ; preds = %38
  %43 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %43, i32 0, i32 3
  %45 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %45, i64 %47
  store %struct.gfs2_bitmap* %48, %struct.gfs2_bitmap** %5, align 8
  %49 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %50 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %56 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %58 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %61 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %121

62:                                               ; preds = %42
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %67 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %74 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %73, i32 0, i32 0
  store i32 4, i32* %74, align 8
  %75 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %76 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %79 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %120

80:                                               ; preds = %62
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %8, align 4
  %87 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %88 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %87, i32 0, i32 0
  store i32 4, i32* %88, align 8
  %89 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %90 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %95 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %98 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %119

99:                                               ; preds = %80
  %100 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %101 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %8, align 4
  %107 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %108 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %107, i32 0, i32 0
  store i32 4, i32* %108, align 8
  %109 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %110 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %115 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %118 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %99, %85
  br label %120

120:                                              ; preds = %119, %65
  br label %121

121:                                              ; preds = %120, %53
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %38

128:                                              ; preds = %38
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %133 = call i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %132)
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %179

136:                                              ; preds = %128
  %137 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %138 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %137, i32 0, i32 3
  %139 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %139, i64 %142
  store %struct.gfs2_bitmap* %143, %struct.gfs2_bitmap** %5, align 8
  %144 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %145 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %148 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %146, %149
  %151 = load i32, i32* @GFS2_NBBY, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %154 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %152, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %136
  %158 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %159 = call i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %163 = call i32 @gfs2_rindex_print(%struct.gfs2_rgrpd* %162)
  %164 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %165 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %166 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %169 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %172 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @fs_err(%struct.gfs2_sbd* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %161, %157
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %179

178:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %175, %131, %31, %18
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.gfs2_bitmap* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @gfs2_rindex_print(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
