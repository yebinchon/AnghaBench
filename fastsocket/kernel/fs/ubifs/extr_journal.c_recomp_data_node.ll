; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_recomp_data_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_recomp_data_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_data_node = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WORST_COMPR_FACTOR = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_DATA_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_data_node*, i32*)* @recomp_data_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recomp_data_node(%struct.ubifs_data_node* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_data_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_data_node* %0, %struct.ubifs_data_node** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %4, align 8
  %12 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @WORST_COMPR_FACTOR, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %75

25:                                               ; preds = %2
  %26 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %4, align 8
  %27 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %4, align 8
  %34 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %4, align 8
  %38 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %37, i32 0, i32 2
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ubifs_decompress(i32* %38, i32 %39, i8* %40, i32* %10, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %71

46:                                               ; preds = %25
  %47 = load i8*, i8** %6, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %4, align 8
  %51 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %50, i32 0, i32 2
  %52 = call i32 @ubifs_compress(i8* %47, i32 %49, i32* %51, i32* %10, i32* %9)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %55 = icmp sle i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ubifs_assert(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %4, align 8
  %61 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %4, align 8
  %66 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @UBIFS_DATA_NODE_SZ, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %46, %45
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ubifs_decompress(i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @ubifs_compress(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
