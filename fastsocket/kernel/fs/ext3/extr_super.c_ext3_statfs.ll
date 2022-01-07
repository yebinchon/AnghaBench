; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstatfs = type { i64, %struct.TYPE_2__, i32, i8*, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ext3_sb_info = type { i64, i64, i64, i32, i32, i32, %struct.ext3_super_block* }
%struct.ext3_super_block = type { i64, i32, i32, i32, i32 }

@MINIX_DF = common dso_local global i32 0, align 4
@EXT3_SUPER_MAGIC = common dso_local global i32 0, align 4
@EXT3_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ext3_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext3_sb_info*, align 8
  %7 = alloca %struct.ext3_super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %5, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %15)
  store %struct.ext3_sb_info* %16, %struct.ext3_sb_info** %6, align 8
  %17 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %18 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %17, i32 0, i32 6
  %19 = load %struct.ext3_super_block*, %struct.ext3_super_block** %18, align 8
  store %struct.ext3_super_block* %19, %struct.ext3_super_block** %7, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* @MINIX_DF, align 4
  %22 = call i64 @test_opt(%struct.super_block* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %26 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %84

27:                                               ; preds = %2
  %28 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %29 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %32 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @le32_to_cpu(i32 %33)
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %27
  %37 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %38 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %40 = call i32 (...) @smp_rmb()
  %41 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %42 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  store i64 %44, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %45

45:                                               ; preds = %60, %36
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @ext3_bg_has_super(%struct.super_block* %50, i64 %51)
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @ext3_bg_num_gdb(%struct.super_block* %53, i64 %54)
  %56 = add nsw i64 %52, %55
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %11, align 8
  %59 = call i32 (...) @cond_resched()
  br label %60

60:                                               ; preds = %49
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %45

63:                                               ; preds = %45
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 2, %67
  %69 = sext i32 %68 to i64
  %70 = mul i64 %64, %69
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %75 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = call i32 (...) @smp_wmb()
  %77 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %78 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @le32_to_cpu(i32 %79)
  %81 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %82 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %63, %27
  br label %84

84:                                               ; preds = %83, %24
  %85 = load i32, i32* @EXT3_SUPER_MAGIC, align 4
  %86 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %87 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %92 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %94 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @le32_to_cpu(i32 %95)
  %97 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %98 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %102 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %101, i32 0, i32 6
  store i64 %100, i64* %102, align 8
  %103 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %104 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %103, i32 0, i32 5
  %105 = call i8* @percpu_counter_sum_positive(i32* %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %108 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %110 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %113 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @le32_to_cpu(i32 %114)
  %116 = sub nsw i64 %111, %115
  %117 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %118 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %120 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %123 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @le32_to_cpu(i32 %124)
  %126 = icmp slt i64 %121, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %84
  %128 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %129 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %84
  %131 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %132 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @le32_to_cpu(i32 %133)
  %135 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %136 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %135, i32 0, i32 4
  store i64 %134, i64* %136, align 8
  %137 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %138 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %137, i32 0, i32 4
  %139 = call i8* @percpu_counter_sum_positive(i32* %138)
  %140 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %141 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* @EXT3_NAME_LEN, align 4
  %143 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %144 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %146 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @le64_to_cpup(i8* %148)
  %150 = load %struct.ext3_super_block*, %struct.ext3_super_block** %7, align 8
  %151 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = getelementptr i8, i8* %153, i64 4
  %155 = call i32 @le64_to_cpup(i8* %154)
  %156 = xor i32 %149, %155
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = and i64 %158, 4294967295
  %160 = trunc i64 %159 to i32
  %161 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %162 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %160, i32* %165, align 4
  %166 = load i32, i32* %8, align 4
  %167 = ashr i32 %166, 32
  %168 = sext i32 %167 to i64
  %169 = and i64 %168, 4294967295
  %170 = trunc i64 %169 to i32
  %171 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %172 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 %170, i32* %175, align 4
  ret i32 0
}

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @ext3_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i64 @ext3_bg_num_gdb(%struct.super_block*, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i8* @percpu_counter_sum_positive(i32*) #1

declare dso_local i32 @le64_to_cpup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
