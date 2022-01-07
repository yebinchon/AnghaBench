; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_empty_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.page = type { i32 }
%struct.minix_sb_info = type { i8*, i64 }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.TYPE_3__ = type { i8*, i64 }

@MINIX_V3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.minix_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* null, %struct.page** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i64 @dir_pages(%struct.inode* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.minix_sb_info* @minix_sb(i32 %19)
  store %struct.minix_sb_info* %20, %struct.minix_sb_info** %7, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %126, %1
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %129

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call %struct.page* @dir_get_page(%struct.inode* %26, i64 %27)
  store %struct.page* %28, %struct.page** %4, align 8
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i64 @IS_ERR(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %126

33:                                               ; preds = %25
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i64 @page_address(%struct.page* %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @minix_last_byte(%struct.inode* %38, i64 %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %44 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %42 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %11, align 8
  store i8* %50, i8** %10, align 8
  br label %51

51:                                               ; preds = %119, %33
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ule i8* %52, %53
  br i1 %54, label %55, label %123

55:                                               ; preds = %51
  %56 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %57 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MINIX_V3, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = bitcast i8* %62 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %13, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %8, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %9, align 8
  br label %79

70:                                               ; preds = %55
  %71 = load i8*, i8** %10, align 8
  %72 = bitcast i8* %71 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %14, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %8, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %70, %61
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %79
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 46
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %130

89:                                               ; preds = %82
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %130

101:                                              ; preds = %94
  br label %117

102:                                              ; preds = %89
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 46
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %130

109:                                              ; preds = %102
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %130

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116, %101
  br label %118

118:                                              ; preds = %117, %79
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.minix_sb_info*, %struct.minix_sb_info** %7, align 8
  %122 = call i8* @minix_next_entry(i8* %120, %struct.minix_sb_info* %121)
  store i8* %122, i8** %10, align 8
  br label %51

123:                                              ; preds = %51
  %124 = load %struct.page*, %struct.page** %4, align 8
  %125 = call i32 @dir_put_page(%struct.page* %124)
  br label %126

126:                                              ; preds = %123, %32
  %127 = load i64, i64* %5, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %5, align 8
  br label %21

129:                                              ; preds = %21
  store i32 1, i32* %2, align 4
  br label %133

130:                                              ; preds = %114, %108, %100, %88
  %131 = load %struct.page*, %struct.page** %4, align 8
  %132 = call i32 @dir_put_page(%struct.page* %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %129
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @minix_last_byte(%struct.inode*, i64) #1

declare dso_local i8* @minix_next_entry(i8*, %struct.minix_sb_info*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
