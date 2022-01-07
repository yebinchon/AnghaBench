; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_clean_an_unclean_leb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_clean_an_unclean_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }
%struct.ubifs_unclean_leb = type { i32, i32 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"LEB %d len %d\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@SCANNED_A_NODE = common dso_local global i32 0, align 4
@SCANNED_EMPTY_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unexpected empty space at %d:%d\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cleaned LEB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_unclean_leb*, i8*)* @clean_an_unclean_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_an_unclean_leb(%struct.ubifs_info* %0, %struct.ubifs_unclean_leb* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_unclean_leb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_ch*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_unclean_leb* %1, %struct.ubifs_unclean_leb** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %19 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %13, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i8*, i32, ...) @dbg_rcvry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %180

38:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %180

39:                                               ; preds = %3
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ubi_read(i32 %42, i32 %43, i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @EBADMSG, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %180

57:                                               ; preds = %50, %39
  br label %58

58:                                               ; preds = %118, %94, %73, %57
  %59 = load i32, i32* %11, align 4
  %60 = icmp sge i32 %59, 8
  br i1 %60, label %61, label %127

61:                                               ; preds = %58
  %62 = call i32 (...) @cond_resched()
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %63, i8* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @SCANNED_A_NODE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %61
  %74 = load i8*, i8** %13, align 8
  %75 = bitcast i8* %74 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %75, %struct.ubifs_ch** %15, align 8
  %76 = load %struct.ubifs_ch*, %struct.ubifs_ch** %15, align 8
  %77 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = call i32 @ALIGN(i32 %79, i32 8)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr i8, i8* %85, i64 %86
  store i8* %87, i8** %13, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %58

91:                                               ; preds = %61
  %92 = load i32, i32* %14, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr i8, i8* %99, i64 %100
  store i8* %101, i8** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %58

105:                                              ; preds = %91
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @SCANNED_EMPTY_SPACE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @ubifs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* @EUCLEAN, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %180

115:                                              ; preds = %105
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %12, align 4
  br label %58

119:                                              ; preds = %115
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i8*, i8** %13, align 8
  %124 = call i32 @ubifs_scanned_corruption(%struct.ubifs_info* %120, i32 %121, i32 %122, i8* %123)
  %125 = load i32, i32* @EUCLEAN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %180

127:                                              ; preds = %58
  %128 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %129 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ALIGN(i32 %130, i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %137 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %127
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %143 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ALIGN(i32 %144, i32 8)
  %146 = sub nsw i32 %141, %145
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %140
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %151 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %17, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  store i8* %158, i8** %13, align 8
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @ubifs_pad(%struct.ubifs_info* %159, i8* %160, i32 %161)
  br label %163

163:                                              ; preds = %149, %140
  br label %164

164:                                              ; preds = %163, %127
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %166 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @UBI_UNKNOWN, align 4
  %172 = call i32 @ubi_leb_change(i32 %167, i32 %168, i8* %169, i32 %170, i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %4, align 4
  br label %180

177:                                              ; preds = %164
  %178 = load i32, i32* %9, align 4
  %179 = call i32 (i8*, i32, ...) @dbg_rcvry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %177, %175, %119, %109, %55, %38, %36
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @dbg_rcvry(i8*, i32, ...) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @ubifs_scanned_corruption(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i32 @ubifs_pad(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubi_leb_change(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
