; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rgrp_go_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rgrp_go_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_holder = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32, i32, %struct.gfs2_bitmap*, i32, i32, i32, i64, %struct.gfs2_glock*, %struct.gfs2_sbd* }
%struct.gfs2_bitmap = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.gfs2_glock = type { i32 }
%struct.gfs2_sbd = type { i32 }

@GFS2_METATYPE_RB = common dso_local global i32 0, align 4
@GFS2_METATYPE_RG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_RDF_UPTODATE = common dso_local global i32 0, align 4
@GBF_FULL = common dso_local global i32 0, align 4
@GFS2_RDF_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_rgrp_go_lock(%struct.gfs2_holder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_holder*, align 8
  %4 = alloca %struct.gfs2_rgrpd*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_glock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_bitmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_holder* %0, %struct.gfs2_holder** %3, align 8
  %12 = load %struct.gfs2_holder*, %struct.gfs2_holder** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %15, align 8
  store %struct.gfs2_rgrpd* %16, %struct.gfs2_rgrpd** %4, align 8
  %17 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %18 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %17, i32 0, i32 8
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %18, align 8
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %5, align 8
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %20, i32 0, i32 7
  %22 = load %struct.gfs2_glock*, %struct.gfs2_glock** %21, align 8
  store %struct.gfs2_glock* %22, %struct.gfs2_glock** %6, align 8
  %23 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %24 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %51, %1
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %32 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %31, i32 0, i32 2
  %33 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %33, i64 %35
  store %struct.gfs2_bitmap* %36, %struct.gfs2_bitmap** %8, align 8
  %37 = load %struct.gfs2_glock*, %struct.gfs2_glock** %6, align 8
  %38 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %39 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %8, align 8
  %45 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %44, i32 0, i32 1
  %46 = call i32 @gfs2_meta_read(%struct.gfs2_glock* %37, i64 %43, i32 0, %struct.TYPE_7__** %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %148

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %93, %54
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %10, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %62 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %61, i32 0, i32 2
  %63 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %63, i64 %65
  store %struct.gfs2_bitmap* %66, %struct.gfs2_bitmap** %8, align 8
  %67 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %68 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %8, align 8
  %69 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i32 @gfs2_meta_wait(%struct.gfs2_sbd* %67, %struct.TYPE_7__* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %148

75:                                               ; preds = %60
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %77 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %8, align 8
  %78 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @GFS2_METATYPE_RB, align 4
  br label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @GFS2_METATYPE_RG, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %76, %struct.TYPE_7__* %79, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %11, align 4
  br label %148

93:                                               ; preds = %86
  br label %56

94:                                               ; preds = %56
  %95 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %96 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @GFS2_RDF_UPTODATE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %147, label %101

101:                                              ; preds = %94
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %116, %101
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i32, i32* @GBF_FULL, align 4
  %108 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %109 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %108, i32 0, i32 2
  %110 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %110, i64 %112
  %114 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %113, i32 0, i32 2
  %115 = call i32 @clear_bit(i32 %107, i32* %114)
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %102

119:                                              ; preds = %102
  %120 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %121 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %122 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %121, i32 0, i32 2
  %123 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %122, align 8
  %124 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %123, i64 0
  %125 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @gfs2_rgrp_in(%struct.gfs2_rgrpd* %120, i32 %128)
  %130 = load i32, i32* @GFS2_RDF_UPTODATE, align 4
  %131 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %134 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %138 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %141 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 8
  %142 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %143 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %146 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %119, %94
  store i32 0, i32* %2, align 4
  br label %176

148:                                              ; preds = %90, %74, %49
  br label %149

149:                                              ; preds = %153, %148
  %150 = load i32, i32* %9, align 4
  %151 = add i32 %150, -1
  store i32 %151, i32* %9, align 4
  %152 = icmp ne i32 %150, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %149
  %154 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %155 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %154, i32 0, i32 2
  %156 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %156, i64 %158
  store %struct.gfs2_bitmap* %159, %struct.gfs2_bitmap** %8, align 8
  %160 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %8, align 8
  %161 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = call i32 @brelse(%struct.TYPE_7__* %162)
  %164 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %8, align 8
  %165 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %164, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %165, align 8
  %166 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %167 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %8, align 8
  %168 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %166, i32 %172)
  br label %149

174:                                              ; preds = %149
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %147
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @gfs2_meta_read(%struct.gfs2_glock*, i64, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @gfs2_meta_wait(%struct.gfs2_sbd*, %struct.TYPE_7__*) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gfs2_rgrp_in(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_7__*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
