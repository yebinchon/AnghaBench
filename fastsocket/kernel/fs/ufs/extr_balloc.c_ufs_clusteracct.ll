; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_balloc.c_ufs_clusteracct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_balloc.c_ufs_clusteracct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_cg_private_info = type { i32, i64, i32 }
%struct.ufs_sb_private_info = type { i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ufs_cg_private_info*, i32, i32)* @ufs_clusteracct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_clusteracct(%struct.super_block* %0, %struct.ufs_cg_private_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_cg_private_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ufs_sb_private_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ufs_cg_private_info* %1, %struct.ufs_cg_private_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %17, align 8
  store %struct.ufs_sb_private_info* %18, %struct.ufs_sb_private_info** %9, align 8
  %19 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %20 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %169

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %29 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %28)
  %30 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %31 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ubh_setbit(i32 %29, i32 %32, i32 %33)
  br label %43

35:                                               ; preds = %24
  %36 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %37 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %36)
  %38 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %39 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ubh_clrbit(i32 %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %27
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %48 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %53 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %58 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %43
  %61 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %62 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %61)
  %63 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %64 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @ubh_find_next_zero_bit(i32 %62, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %82 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store i32 -1, i32* %12, align 4
  br label %88

88:                                               ; preds = %87, %74
  %89 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %90 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %89)
  %91 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %92 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @ubh_find_last_zero_bit(i32 %90, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %88
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %112 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %102
  %116 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %117 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %115, %102
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %122 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %121)
  %123 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %124 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = shl i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  %130 = call i64 @ubh_get_addr(i32 %122, i64 %129)
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @fs32_add(%struct.super_block* %120, i32* %131, i32 %132)
  %134 = load i32, i32* %14, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %119
  %137 = load %struct.super_block*, %struct.super_block** %5, align 8
  %138 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %139 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %138)
  %140 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %141 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = shl i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %142, %145
  %147 = call i64 @ubh_get_addr(i32 %139, i64 %146)
  %148 = inttoptr i64 %147 to i32*
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @fs32_sub(%struct.super_block* %137, i32* %148, i32 %149)
  br label %151

151:                                              ; preds = %136, %119
  %152 = load i32, i32* %13, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load %struct.super_block*, %struct.super_block** %5, align 8
  %156 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %157 = call i32 @UCPI_UBH(%struct.ufs_cg_private_info* %156)
  %158 = load %struct.ufs_cg_private_info*, %struct.ufs_cg_private_info** %6, align 8
  %159 = getelementptr inbounds %struct.ufs_cg_private_info, %struct.ufs_cg_private_info* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = shl i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %160, %163
  %165 = call i64 @ubh_get_addr(i32 %157, i64 %164)
  %166 = inttoptr i64 %165 to i32*
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @fs32_sub(%struct.super_block* %155, i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %23, %154, %151
  ret void
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @ubh_setbit(i32, i32, i32) #1

declare dso_local i32 @UCPI_UBH(%struct.ufs_cg_private_info*) #1

declare dso_local i32 @ubh_clrbit(i32, i32, i32) #1

declare dso_local i32 @ubh_find_next_zero_bit(i32, i32, i32, i32) #1

declare dso_local i32 @ubh_find_last_zero_bit(i32, i32, i32, i32) #1

declare dso_local i32 @fs32_add(%struct.super_block*, i32*, i32) #1

declare dso_local i64 @ubh_get_addr(i32, i64) #1

declare dso_local i32 @fs32_sub(%struct.super_block*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
