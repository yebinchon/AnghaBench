; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_read_partitions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/samples/install/extr_setup.c_read_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"fdisk -l 2>/dev/null 1>/tmp/fdisk.output\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"fdisk didn't run\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"/tmp/fdisk.output\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot read fdisk output\00", align 1
@num_partition = common dso_local global i64 0, align 8
@MAX_PARTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@partitions = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_DEV_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"Linux native\00", align 1
@Linux = common dso_local global i32 0, align 4
@num_linux = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Linux swap\00", align 1
@Swap = common dso_local global i32 0, align 4
@num_swap = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"DOS\00", align 1
@MsDos = common dso_local global i32 0, align 4
@num_msdos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_partitions() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [200 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = call i32 @system(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = call i32* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %15, i32** %1, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  br label %20

20:                                               ; preds = %135, %19
  %21 = load i64, i64* @num_partition, align 8
  %22 = load i64, i64* @MAX_PARTS, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @get_line(i8* %25, i32 200, i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = icmp sge i32 %27, 0
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %136

31:                                               ; preds = %29
  %32 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %135

35:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  %36 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 5
  store i8* %37, i8** %6, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %39 = load i64, i64* @num_partition, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strcpy(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %64, %35
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MAX_DEV_NAME, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isspace(i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %51, %47
  %63 = phi i1 [ false, %51 ], [ false, %47 ], [ %61, %56 ]
  br i1 %63, label %64, label %72

64:                                               ; preds = %62
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  %67 = load i8, i8* %65, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %47

72:                                               ; preds = %62
  %73 = load i8*, i8** %7, align 8
  store i8 0, i8* %73, align 1
  %74 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %75 = getelementptr inbounds i8, i8* %74, i64 37
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %81, %72
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isspace(i8 zeroext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  br label %76

84:                                               ; preds = %76
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @atoi(i8* %85)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %88 = load i64, i64* @num_partition, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32 %86, i32* %90, align 4
  %91 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %92 = call i64 @strstr(i8* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %84
  %95 = load i32, i32* @Linux, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %97 = load i64, i64* @num_partition, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 8
  %100 = load i64, i64* @num_partition, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* @num_partition, align 8
  %102 = load i32, i32* @num_linux, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @num_linux, align 4
  br label %134

104:                                              ; preds = %84
  %105 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %106 = call i64 @strstr(i8* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i32, i32* @Swap, align 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %111 = load i64, i64* @num_partition, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 8
  %114 = load i64, i64* @num_partition, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* @num_partition, align 8
  %116 = load i32, i32* @num_swap, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @num_swap, align 4
  br label %133

118:                                              ; preds = %104
  %119 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i64 0, i64 0
  %120 = call i64 @strstr(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* @MsDos, align 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @partitions, align 8
  %125 = load i64, i64* @num_partition, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 8
  %128 = load i64, i64* @num_partition, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* @num_partition, align 8
  %130 = load i32, i32* @num_msdos, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @num_msdos, align 4
  br label %132

132:                                              ; preds = %122, %118
  br label %133

133:                                              ; preds = %132, %108
  br label %134

134:                                              ; preds = %133, %94
  br label %135

135:                                              ; preds = %134, %31
  br label %20

136:                                              ; preds = %29
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 @fclose(i32* %137)
  %139 = call i32 @unlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @get_line(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
