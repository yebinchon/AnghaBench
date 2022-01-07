; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_bulk_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.bu_info = type { i32, i32, %struct.TYPE_2__*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ubifs_wbuf = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"buffer too small %d vs %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to read from LEB %d:%d, error %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"key %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_bulk_read(%struct.ubifs_info* %0, %struct.bu_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.bu_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_wbuf*, align 8
  %12 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.bu_info* %1, %struct.bu_info** %5, align 8
  %13 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %14 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %20 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %26 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %29 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %37 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %40 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %53 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %2
  %57 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %58 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i8*, i32, i32, ...) @ubifs_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %161

64:                                               ; preds = %2
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call %struct.ubifs_wbuf* @ubifs_get_wbuf(%struct.ubifs_info* %65, i32 %66)
  store %struct.ubifs_wbuf* %67, %struct.ubifs_wbuf** %11, align 8
  %68 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %69 = icmp ne %struct.ubifs_wbuf* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %72 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %73 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @read_wbuf(%struct.ubifs_wbuf* %71, i8* %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  br label %90

79:                                               ; preds = %64
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %85 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ubi_read(i32 %82, i32 %83, i8* %86, i32 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %79, %70
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %94 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @maybe_leb_gced(%struct.ubifs_info* %91, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %161

101:                                              ; preds = %90
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @EBADMSG, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, i32, i32, ...) @ubifs_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  %114 = call i32 (...) @dbg_dump_stack()
  %115 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %116 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %115, i32 0, i32 4
  %117 = call i32 @DBGKEY(i32* %116)
  %118 = call i32 @dbg_tnc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %161

120:                                              ; preds = %104, %101
  %121 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %122 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %157, %120
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %127 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %160

130:                                              ; preds = %124
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %134 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = call i32 @validate_data_node(%struct.ubifs_info* %131, i8* %132, %struct.TYPE_2__* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %161

144:                                              ; preds = %130
  %145 = load i8*, i8** %12, align 8
  %146 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %147 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %146, i32 0, i32 2
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ALIGN(i32 %153, i32 8)
  %155 = sext i32 %154 to i64
  %156 = getelementptr i8, i8* %145, i64 %155
  store i8* %156, i8** %12, align 8
  br label %157

157:                                              ; preds = %144
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %124

160:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %142, %109, %98, %56
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @ubifs_err(i8*, i32, i32, ...) #1

declare dso_local %struct.ubifs_wbuf* @ubifs_get_wbuf(%struct.ubifs_info*, i32) #1

declare dso_local i32 @read_wbuf(%struct.ubifs_wbuf*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @maybe_leb_gced(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dbg_dump_stack(...) #1

declare dso_local i32 @dbg_tnc(i8*, i32) #1

declare dso_local i32 @DBGKEY(i32*) #1

declare dso_local i32 @validate_data_node(%struct.ubifs_info*, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
