; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_read_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }
%struct.ubifs_ch = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"LEB %d:%d, %s, length %d\00", align 1
@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@UBIFS_NODE_TYPES_CNT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot read node %d from LEB %d:%d, error %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad node type (%d but expected %d)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"expected node type %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"bad node length %d, expected %d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_ch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %18, %struct.ubifs_ch** %16, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @dbg_ntype(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @dbg_io(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %22, i32 %23)
  %25 = load i32, i32* %12, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %6
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %13, align 4
  %35 = icmp sge i32 %34, 0
  br label %36

36:                                               ; preds = %33, %27, %6
  %37 = phi i1 [ false, %27 ], [ false, %6 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ubifs_assert(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @UBIFS_CH_SZ, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %46, %49
  br label %51

51:                                               ; preds = %43, %36
  %52 = phi i1 [ false, %36 ], [ %50, %43 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ubifs_assert(i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, 7
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br label %64

64:                                               ; preds = %58, %51
  %65 = phi i1 [ false, %51 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @ubifs_assert(i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @UBIFS_NODE_TYPES_CNT, align 4
  %73 = icmp slt i32 %71, %72
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi i1 [ false, %64 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @ubifs_assert(i32 %76)
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ubi_read(i32 %80, i32 %81, i8* %82, i32 %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %74
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @EBADMSG, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %7, align 4
  br label %147

100:                                              ; preds = %88, %74
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %103 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %108 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  br label %137

112:                                              ; preds = %100
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @ubifs_check_node(%struct.ubifs_info* %113, i8* %114, i32 %115, i32 %116, i32 0, i32 0)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %7, align 4
  br label %147

124:                                              ; preds = %112
  %125 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %126 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %134)
  br label %137

136:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %147

137:                                              ; preds = %132, %106
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @dbg_dump_node(%struct.ubifs_info* %141, i8* %142)
  %144 = call i32 (...) @dbg_dump_stack()
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %137, %136, %120, %93
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, ...) #1

declare dso_local i32 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dbg_dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
