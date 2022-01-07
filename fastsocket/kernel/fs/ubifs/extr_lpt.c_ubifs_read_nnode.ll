; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_read_nnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_read_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, %struct.ubifs_nnode*, i64, i32, i32, i8* }
%struct.ubifs_nnode = type { i32, %struct.ubifs_nnode*, i64, i8*, %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i32, i32, %struct.ubifs_nnode* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error %d reading nnode at %d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_nnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_nbranch*, align 8
  %9 = alloca %struct.ubifs_nnode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ubifs_nbranch* null, %struct.ubifs_nbranch** %8, align 8
  store %struct.ubifs_nnode* null, %struct.ubifs_nnode** %9, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 7
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %18 = icmp ne %struct.ubifs_nnode* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %20, i32 0, i32 4
  %22 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %22, i64 %24
  store %struct.ubifs_nbranch* %25, %struct.ubifs_nbranch** %8, align 8
  %26 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %27 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %32, %19
  %40 = load i32, i32* @GFP_NOFS, align 4
  %41 = call %struct.ubifs_nnode* @kzalloc(i32 40, i32 %40)
  store %struct.ubifs_nnode* %41, %struct.ubifs_nnode** %9, align 8
  %42 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %43 = icmp ne %struct.ubifs_nnode* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %136

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @calc_nnode_num_from_parent(%struct.ubifs_info* %56, %struct.ubifs_nnode* %57, i32 %58)
  %60 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %61 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  br label %86

63:                                               ; preds = %47
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ubi_read(i32 %66, i32 %67, i8* %68, i32 %69, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %136

77:                                               ; preds = %63
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %81 = call i32 @ubifs_unpack_nnode(%struct.ubifs_info* %78, i8* %79, %struct.ubifs_nnode* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %136

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %62
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %88 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %89 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @validate_nnode(%struct.ubifs_info* %87, %struct.ubifs_nnode* %88, %struct.ubifs_nnode* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %136

95:                                               ; preds = %86
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %102 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i8* @calc_nnode_num_from_parent(%struct.ubifs_info* %101, %struct.ubifs_nnode* %102, i32 %103)
  %105 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %106 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %100, %95
  %108 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %109 = icmp ne %struct.ubifs_nnode* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %112 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %113 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %112, i32 0, i32 2
  store %struct.ubifs_nnode* %111, %struct.ubifs_nnode** %113, align 8
  %114 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %115 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 1
  %118 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %119 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %129

120:                                              ; preds = %107
  %121 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 3
  store %struct.ubifs_nnode* %121, %struct.ubifs_nnode** %123, align 8
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %128 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %120, %110
  %130 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %131 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %132 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %131, i32 0, i32 1
  store %struct.ubifs_nnode* %130, %struct.ubifs_nnode** %132, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %135 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  store i32 0, i32* %4, align 4
  br label %144

136:                                              ; preds = %94, %84, %76, %44
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @ubifs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %138, i32 %139)
  %141 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %142 = call i32 @kfree(%struct.ubifs_nnode* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %136, %129
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.ubifs_nnode* @kzalloc(i32, i32) #1

declare dso_local i8* @calc_nnode_num_from_parent(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ubifs_unpack_nnode(%struct.ubifs_info*, i8*, %struct.ubifs_nnode*) #1

declare dso_local i32 @validate_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_nnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
