; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_attr.c_inode_change_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_attr.c_inode_change_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64 }
%struct.iattr = type { i32, i64, i64, i32, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_FORCE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@CAP_CHOWN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@CAP_FSETID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_TIMES_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inode_change_ok(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.iattr*, %struct.iattr** %5, align 8
  %9 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ATTR_SIZE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load %struct.iattr*, %struct.iattr** %5, align 8
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @inode_newsize_ok(%struct.inode* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %149

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ATTR_FORCE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %149

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ATTR_UID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = call i64 (...) @current_fsuid()
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load %struct.iattr*, %struct.iattr** %5, align 8
  %45 = getelementptr inbounds %struct.iattr, %struct.iattr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43, %37
  %52 = load i32, i32* @CAP_CHOWN, align 4
  %53 = call i32 @capable(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %149

58:                                               ; preds = %51, %43, %32
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ATTR_GID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %58
  %64 = call i64 (...) @current_fsuid()
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %83, label %69

69:                                               ; preds = %63
  %70 = load %struct.iattr*, %struct.iattr** %5, align 8
  %71 = getelementptr inbounds %struct.iattr, %struct.iattr* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @in_group_p(i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %69
  %76 = load %struct.iattr*, %struct.iattr** %5, align 8
  %77 = getelementptr inbounds %struct.iattr, %struct.iattr* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %75, %63
  %84 = load i32, i32* @CAP_CHOWN, align 4
  %85 = call i32 @capable(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @EPERM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %149

90:                                               ; preds = %83, %75, %69, %58
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ATTR_MODE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call i32 @is_owner_or_cap(%struct.inode* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @EPERM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %149

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @ATTR_GID, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.iattr*, %struct.iattr** %5, align 8
  %109 = getelementptr inbounds %struct.iattr, %struct.iattr* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  br label %115

111:                                              ; preds = %102
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i64 [ %110, %107 ], [ %114, %111 ]
  %117 = call i32 @in_group_p(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @CAP_FSETID, align 4
  %121 = call i32 @capable(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @S_ISGID, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.iattr*, %struct.iattr** %5, align 8
  %127 = getelementptr inbounds %struct.iattr, %struct.iattr* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %123, %119, %115
  br label %131

131:                                              ; preds = %130, %90
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @ATTR_MTIME_SET, align 4
  %134 = load i32, i32* @ATTR_ATIME_SET, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @ATTR_TIMES_SET, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %132, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %131
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = call i32 @is_owner_or_cap(%struct.inode* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* @EPERM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %149

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %131
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %144, %99, %87, %55, %31, %23
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i32) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @in_group_p(i64) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
