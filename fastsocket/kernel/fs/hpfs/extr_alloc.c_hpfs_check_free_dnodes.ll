; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_check_free_dnodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_check_free_dnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"chkdn1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"chkdn2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_check_free_dnodes(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.quad_buffer_head, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 16384
  %19 = sub nsw i32 %18, 1
  %20 = ashr i32 %19, 14
  store i32 %20, i32* %6, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 268435455
  store i32 %25, i32* %7, align 4
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = call i32* @hpfs_map_dnode_bitmap(%struct.super_block* %26, %struct.quad_buffer_head* %11)
  store i32* %27, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %66, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 512
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %66

41:                                               ; preds = %33
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %62, %41
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %11)
  store i32 0, i32* %3, align 4
  br label %147

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = lshr i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %47

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %30

69:                                               ; preds = %30
  br label %70

70:                                               ; preds = %69, %2
  %71 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %11)
  store i32 0, i32* %8, align 4
  %72 = load %struct.super_block*, %struct.super_block** %4, align 8
  %73 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.super_block*, %struct.super_block** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32* @hpfs_map_bitmap(%struct.super_block* %78, i32 %79, %struct.quad_buffer_head* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %80, i32** %10, align 8
  br label %98

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %144, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %147

94:                                               ; preds = %89
  %95 = load %struct.super_block*, %struct.super_block** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32* @hpfs_map_bitmap(%struct.super_block* %95, i32 %96, %struct.quad_buffer_head* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %97, i32** %10, align 8
  br label %98

98:                                               ; preds = %94, %77
  %99 = load i32*, i32** %10, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %144

101:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %139, %101
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 512
  br i1 %104, label %105, label %142

105:                                              ; preds = %102
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %139

113:                                              ; preds = %105
  store i32 15, i32* %13, align 4
  br label %114

114:                                              ; preds = %135, %113
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %117
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %11)
  store i32 0, i32* %3, align 4
  br label %147

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %117
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %13, align 4
  %137 = shl i32 %136, 4
  store i32 %137, i32* %13, align 4
  br label %114

138:                                              ; preds = %114
  br label %139

139:                                              ; preds = %138, %112
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %102

142:                                              ; preds = %102
  %143 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %11)
  br label %144

144:                                              ; preds = %142, %98
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %82

147:                                              ; preds = %131, %93, %58
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_dnode_bitmap(%struct.super_block*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
