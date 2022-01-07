; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_buffer.c_hpfs_get_4sectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_buffer.c_hpfs_get_4sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i8*, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"HPFS: hpfs_get_4sectors: unaligned read\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"HPFS: hpfs_get_4sectors: out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpfs_get_4sectors(%struct.super_block* %0, i32 %1, %struct.quad_buffer_head* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.quad_buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.quad_buffer_head* %2, %struct.quad_buffer_head** %7, align 8
  %8 = call i32 (...) @cond_resched()
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 3
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %138

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call i8* @kmalloc(i32 2048, i32 %15)
  %17 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %18 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = icmp ne i8* %16, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %138

22:                                               ; preds = %14
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %26 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 0
  %29 = call i32 @hpfs_get_sector(%struct.super_block* %23, i32 %24, %struct.TYPE_3__** %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %137

32:                                               ; preds = %22
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  %36 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %37 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 1
  %40 = call i32 @hpfs_get_sector(%struct.super_block* %33, i32 %35, %struct.TYPE_3__** %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %130

43:                                               ; preds = %32
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 2
  %47 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %48 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %49, i64 2
  %51 = call i32 @hpfs_get_sector(%struct.super_block* %44, i32 %46, %struct.TYPE_3__** %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %123

54:                                               ; preds = %43
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 3
  %58 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %59 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 3
  %62 = call i32 @hpfs_get_sector(%struct.super_block* %55, i32 %57, %struct.TYPE_3__** %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %116

65:                                               ; preds = %54
  %66 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %67 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %70 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %71, i64 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i8* %68, i32 %75, i32 512)
  %77 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %78 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr i8, i8* %79, i64 512
  %81 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %82 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %83, i64 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i8* %80, i32 %87, i32 512)
  %89 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %90 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr i8, i8* %91, i64 1024
  %93 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %94 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %95, i64 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i8* %92, i32 %99, i32 512)
  %101 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %102 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr i8, i8* %103, i64 1536
  %105 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %106 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %107, i64 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(i8* %104, i32 %111, i32 512)
  %113 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %114 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %4, align 8
  br label %138

116:                                              ; preds = %64
  %117 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %118 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %119, i64 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = call i32 @brelse(%struct.TYPE_3__* %121)
  br label %123

123:                                              ; preds = %116, %53
  %124 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %125 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %126, i64 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = call i32 @brelse(%struct.TYPE_3__* %128)
  br label %130

130:                                              ; preds = %123, %42
  %131 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %132 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %133, i64 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = call i32 @brelse(%struct.TYPE_3__* %135)
  br label %137

137:                                              ; preds = %130, %31
  store i8* null, i8** %4, align 8
  br label %138

138:                                              ; preds = %137, %65, %20, %12
  %139 = load i8*, i8** %4, align 8
  ret i8* %139
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hpfs_get_sector(%struct.super_block*, i32, %struct.TYPE_3__**) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
