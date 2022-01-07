; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_alloc.c_nilfs_palloc_find_available_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_alloc.c_nilfs_palloc_find_available_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@BITS_PER_LONG = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i8*, i32)* @nilfs_palloc_find_available_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_palloc_find_available_slot(%struct.inode* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %5
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @BITS_PER_LONG, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = load i64, i64* @BITS_PER_LONG, align 8
  %24 = sub i64 %23, 1
  %25 = xor i64 %24, -1
  %26 = and i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %31, %18
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @nilfs_find_next_zero_bit(i8* %34, i32 %35, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @nilfs_mdt_bgl_lock(%struct.inode* %43, i64 %44)
  %46 = load i32, i32* %13, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @nilfs_set_bit_atomic(i32 %45, i32 %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %121

52:                                               ; preds = %42, %33
  br label %54

53:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %53, %52
  store i32 0, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %107, %54
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %60
  br label %66

66:                                               ; preds = %105, %65
  %67 = load i8*, i8** %10, align 8
  %68 = bitcast i8* %67 to i64*
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @BITS_PER_LONG, align 8
  %72 = udiv i64 %70, %71
  %73 = getelementptr inbounds i64, i64* %68, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, -1
  br i1 %75, label %76, label %106

76:                                               ; preds = %66
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @BITS_PER_LONG, align 8
  %80 = add i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %85, %76
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @nilfs_find_next_zero_bit(i8* %88, i32 %89, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @nilfs_mdt_bgl_lock(%struct.inode* %96, i64 %97)
  %99 = load i32, i32* %13, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @nilfs_set_bit_atomic(i32 %98, i32 %99, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %6, align 4
  br label %121

105:                                              ; preds = %95, %87
  br label %66

106:                                              ; preds = %66
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* @BITS_PER_LONG, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %15, align 4
  %113 = load i64, i64* @BITS_PER_LONG, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  br label %56

118:                                              ; preds = %56
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %118, %103, %50
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @nilfs_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @nilfs_set_bit_atomic(i32, i32, i8*) #1

declare dso_local i32 @nilfs_mdt_bgl_lock(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
