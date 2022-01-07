; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_submit_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_submit_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.btrfs_dio_private*, i64, %struct.bio_vec* }
%struct.btrfs_dio_private = type { i32, i32, %struct.bio*, i64, i64, i32, %struct.inode*, %struct.btrfs_dio_private*, i32* }
%struct.bio_vec = type { i64 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_ordered_extent = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@REQ_WRITE = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btrfs_endio_direct_write = common dso_local global i32 0, align 4
@btrfs_endio_direct_read = common dso_local global i32 0, align 4
@BTRFS_ORDERED_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_ORDERED_NOCOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.bio*, %struct.inode*, i32)* @btrfs_submit_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_submit_direct(i32 %0, %struct.bio* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_dio_private*, align 8
  %11 = alloca %struct.bio_vec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_ordered_extent*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %9, align 8
  %20 = load %struct.bio*, %struct.bio** %6, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 4
  %22 = load %struct.bio_vec*, %struct.bio_vec** %21, align 8
  store %struct.bio_vec* %22, %struct.bio_vec** %11, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @REQ_WRITE, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call i8* @kmalloc(i32 64, i32 %32)
  %34 = bitcast i8* %33 to %struct.btrfs_dio_private*
  store %struct.btrfs_dio_private* %34, %struct.btrfs_dio_private** %10, align 8
  %35 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %36 = icmp ne %struct.btrfs_dio_private* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %14, align 4
  br label %144

40:                                               ; preds = %4
  %41 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %42 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %45
  %49 = load %struct.bio*, %struct.bio** %6, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @GFP_NOFS, align 4
  %56 = call i8* @kmalloc(i32 %54, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %59 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %58, i32 0, i32 8
  store i32* %57, i32** %59, align 8
  %60 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %61 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %60, i32 0, i32 8
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %48
  %65 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %66 = call i32 @kfree(%struct.btrfs_dio_private* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  br label %144

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69, %45, %40
  %71 = load %struct.bio*, %struct.bio** %6, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 2
  %73 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %72, align 8
  %74 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %75 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %74, i32 0, i32 7
  store %struct.btrfs_dio_private* %73, %struct.btrfs_dio_private** %75, align 8
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %78 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %77, i32 0, i32 6
  store %struct.inode* %76, %struct.inode** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %81 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %83 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %94, %70
  %85 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %86 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %89 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %93 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %92, i32 1
  store %struct.bio_vec* %93, %struct.bio_vec** %11, align 8
  br label %94

94:                                               ; preds = %84
  %95 = load %struct.bio_vec*, %struct.bio_vec** %11, align 8
  %96 = load %struct.bio*, %struct.bio** %6, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 4
  %98 = load %struct.bio_vec*, %struct.bio_vec** %97, align 8
  %99 = load %struct.bio*, %struct.bio** %6, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %98, i64 %102
  %104 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %103, i64 -1
  %105 = icmp ule %struct.bio_vec* %95, %104
  br i1 %105, label %84, label %106

106:                                              ; preds = %94
  %107 = load %struct.bio*, %struct.bio** %6, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 %110, 9
  %112 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %113 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %115 = load %struct.bio*, %struct.bio** %6, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 2
  store %struct.btrfs_dio_private* %114, %struct.btrfs_dio_private** %116, align 8
  %117 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %118 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = load %struct.bio*, %struct.bio** %6, align 8
  %120 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %121 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %120, i32 0, i32 2
  store %struct.bio* %119, %struct.bio** %121, align 8
  %122 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %123 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %122, i32 0, i32 1
  %124 = call i32 @atomic_set(i32* %123, i32 0)
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %106
  %128 = load i32, i32* @btrfs_endio_direct_write, align 4
  %129 = load %struct.bio*, %struct.bio** %6, align 8
  %130 = getelementptr inbounds %struct.bio, %struct.bio* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %135

131:                                              ; preds = %106
  %132 = load i32, i32* @btrfs_endio_direct_read, align 4
  %133 = load %struct.bio*, %struct.bio** %6, align 8
  %134 = getelementptr inbounds %struct.bio, %struct.bio* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %10, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @btrfs_submit_direct_hook(i32 %136, %struct.btrfs_dio_private* %137, i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %180

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %64, %37
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %144
  %148 = load %struct.inode*, %struct.inode** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode* %148, i32 %149)
  store %struct.btrfs_ordered_extent* %150, %struct.btrfs_ordered_extent** %15, align 8
  %151 = load i32, i32* @BTRFS_ORDERED_PREALLOC, align 4
  %152 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %15, align 8
  %153 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %152, i32 0, i32 2
  %154 = call i32 @test_bit(i32 %151, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %171, label %156

156:                                              ; preds = %147
  %157 = load i32, i32* @BTRFS_ORDERED_NOCOW, align 4
  %158 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %15, align 8
  %159 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %158, i32 0, i32 2
  %160 = call i32 @test_bit(i32 %157, i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %156
  %163 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %164 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %15, align 8
  %165 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %15, align 8
  %168 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @btrfs_free_reserved_extent(%struct.btrfs_root* %163, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %162, %156, %147
  %172 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %15, align 8
  %173 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %172)
  %174 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %15, align 8
  %175 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %174)
  br label %176

176:                                              ; preds = %171, %144
  %177 = load %struct.bio*, %struct.bio** %6, align 8
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @bio_endio(%struct.bio* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %142
  ret void
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_dio_private*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @btrfs_submit_direct_hook(i32, %struct.btrfs_dio_private*, i32) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_free_reserved_extent(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
