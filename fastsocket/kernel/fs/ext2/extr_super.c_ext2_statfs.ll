; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstatfs = type { i64, i8*, i8*, %struct.TYPE_2__, i32, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ext2_sb_info = type { i64, i8*, i64, i32, %struct.ext2_super_block* }
%struct.ext2_super_block = type { i64, i8*, i32, i32, i8*, i32, i32 }

@MINIX_DF = common dso_local global i32 0, align 4
@EXT2_SUPER_MAGIC = common dso_local global i32 0, align 4
@EXT2_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ext2_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext2_sb_info*, align 8
  %7 = alloca %struct.ext2_super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %14)
  store %struct.ext2_sb_info* %15, %struct.ext2_sb_info** %6, align 8
  %16 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %17 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %16, i32 0, i32 4
  %18 = load %struct.ext2_super_block*, %struct.ext2_super_block** %17, align 8
  store %struct.ext2_super_block* %18, %struct.ext2_super_block** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = load i32, i32* @MINIX_DF, align 4
  %21 = call i64 @test_opt(%struct.super_block* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %25 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %84

26:                                               ; preds = %2
  %27 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %28 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %31 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = icmp ne i8* %29, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %26
  store i64 0, i64* %10, align 8
  %36 = call i32 (...) @smp_rmb()
  %37 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %38 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  %41 = ptrtoint i8* %40 to i64
  store i64 %41, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %58, %35
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %45 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @ext2_bg_has_super(%struct.super_block* %49, i64 %50)
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @ext2_bg_num_gdb(%struct.super_block* %52, i64 %53)
  %55 = add nsw i64 %51, %54
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %48
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %9, align 8
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %63 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 2, %67
  %69 = sext i32 %68 to i64
  %70 = mul i64 %64, %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %75 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = call i32 (...) @smp_wmb()
  %77 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %78 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @le32_to_cpu(i32 %79)
  %81 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %82 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %61, %26
  br label %84

84:                                               ; preds = %83, %23
  %85 = load i32, i32* @EXT2_SUPER_MAGIC, align 4
  %86 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %87 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %92 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %94 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %98 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 0, %99
  %101 = getelementptr i8, i8* %96, i64 %100
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %104 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.super_block*, %struct.super_block** %5, align 8
  %106 = call i8* @ext2_count_free_blocks(%struct.super_block* %105)
  %107 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %108 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %110 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @cpu_to_le32(i8* %111)
  %113 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %114 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %116 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %119 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @le32_to_cpu(i32 %120)
  %122 = ptrtoint i8* %117 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %127 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  %128 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %129 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %132 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le32_to_cpu(i32 %133)
  %135 = icmp ult i8* %130, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %84
  %137 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %138 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %137, i32 0, i32 6
  store i8* null, i8** %138, align 8
  br label %139

139:                                              ; preds = %136, %84
  %140 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %141 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @le32_to_cpu(i32 %142)
  %144 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %145 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load %struct.super_block*, %struct.super_block** %5, align 8
  %147 = call i8* @ext2_count_free_inodes(%struct.super_block* %146)
  %148 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %149 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  %150 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %151 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @cpu_to_le32(i8* %152)
  %154 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %155 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* @EXT2_NAME_LEN, align 4
  %157 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %158 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %160 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @le64_to_cpup(i8* %162)
  %164 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %165 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = getelementptr i8, i8* %167, i64 4
  %169 = call i32 @le64_to_cpup(i8* %168)
  %170 = xor i32 %163, %169
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = and i64 %172, 4294967295
  %174 = trunc i64 %173 to i32
  %175 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %176 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %174, i32* %179, align 4
  %180 = load i32, i32* %8, align 4
  %181 = ashr i32 %180, 32
  %182 = sext i32 %181 to i64
  %183 = and i64 %182, 4294967295
  %184 = trunc i64 %183 to i32
  %185 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %186 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32 %184, i32* %189, align 4
  ret i32 0
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @ext2_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i64 @ext2_bg_num_gdb(%struct.super_block*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i8* @ext2_count_free_blocks(%struct.super_block*) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i8* @ext2_count_free_inodes(%struct.super_block*) #1

declare dso_local i32 @le64_to_cpup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
