; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_vmdb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_vmdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmdb = type { i32, i32, i64, i64, i64 }

@MAGIC_VMDB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Cannot find the VMDB, database may be corrupt.\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Expected VMDB version %d.%d, got %d.%d. Aborting.\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Parsed VMDB successfully.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.vmdb*)* @ldm_parse_vmdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_vmdb(i32* %0, %struct.vmdb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vmdb*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.vmdb* %1, %struct.vmdb** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %10 = icmp ne %struct.vmdb* %9, null
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i64, i64* @MAGIC_VMDB, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @get_unaligned_be32(i32* %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @ldm_crit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

22:                                               ; preds = %12
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 18
  %25 = call i8* @get_unaligned_be16(i32* %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %28 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 20
  %31 = call i8* @get_unaligned_be16(i32* %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %34 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %36 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %44, label %39

39:                                               ; preds = %22
  %40 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %41 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 10
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %22
  %45 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %46 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %49 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ldm_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 10, i32 %47, i32 %50)
  store i32 0, i32* %3, align 4
  br label %69

52:                                               ; preds = %39
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = call i64 @get_unaligned_be32(i32* %54)
  %56 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %57 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 12
  %60 = call i64 @get_unaligned_be32(i32* %59)
  %61 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %62 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = call i64 @get_unaligned_be32(i32* %64)
  %66 = load %struct.vmdb*, %struct.vmdb** %5, align 8
  %67 = getelementptr inbounds %struct.vmdb, %struct.vmdb* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = call i32 @ldm_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %52, %44, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @ldm_crit(i8*) #1

declare dso_local i8* @get_unaligned_be16(i32*) #1

declare dso_local i32 @ldm_error(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ldm_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
