; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/init/extr_do_mounts.c_name_to_dev_t.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/init/extr_do_mounts.c_name_to_dev_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@Root_NFS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@Root_RAM0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"ram\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @name_to_dev_t(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9)
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @MKDEV(i32 %18, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @MAJOR(i64 %22)
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @MINOR(i64 %27)
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %17
  br label %155

31:                                               ; preds = %25
  br label %41

32:                                               ; preds = %13
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @simple_strtoul(i8* %33, i8** %5, i32 16)
  %35 = call i64 @new_decode_dev(i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %155

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %31
  br label %156

42:                                               ; preds = %1
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  store i8* %44, i8** %3, align 8
  %45 = load i64, i64* @Root_NFS, align 8
  store i64 %45, i64* %6, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %156

50:                                               ; preds = %42
  %51 = load i64, i64* @Root_RAM0, align 8
  store i64 %51, i64* %6, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %156

56:                                               ; preds = %50
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = icmp sgt i32 %58, 31
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %155

61:                                               ; preds = %56
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @strcpy(i8* %62, i8* %63)
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %78, %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  store i8 33, i8* %76, align 1
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  br label %66

81:                                               ; preds = %66
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %83 = call i64 @blk_lookup_devt(i8* %82, i32 0)
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %156

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %100, %87
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %91 = icmp ugt i8* %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 -1
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isdigit(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %92, %88
  %99 = phi i1 [ false, %88 ], [ %97, %92 ]
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %5, align 8
  br label %88

103:                                              ; preds = %98
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %116, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 48
  br i1 %115, label %116, label %117

116:                                              ; preds = %111, %107, %103
  br label %155

117:                                              ; preds = %111
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @simple_strtoul(i8* %118, i8** null, i32 10)
  store i32 %119, i32* %7, align 4
  %120 = load i8*, i8** %5, align 8
  store i8 0, i8* %120, align 1
  %121 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %122 = load i32, i32* %7, align 4
  %123 = call i64 @blk_lookup_devt(i8* %121, i32 %122)
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %6, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %156

127:                                              ; preds = %117
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = icmp ult i8* %128, %130
  br i1 %131, label %144, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 -2
  %135 = load i8, i8* %134, align 1
  %136 = call i64 @isdigit(i8 signext %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 -1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 112
  br i1 %143, label %144, label %145

144:                                              ; preds = %138, %132, %127
  br label %155

145:                                              ; preds = %138
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 -1
  store i8 0, i8* %147, align 1
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %149 = load i32, i32* %7, align 4
  %150 = call i64 @blk_lookup_devt(i8* %148, i32 %149)
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %6, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %156

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %144, %116, %60, %39, %30
  store i64 0, i64* %2, align 8
  br label %158

156:                                              ; preds = %153, %126, %86, %55, %49, %41
  %157 = load i64, i64* %6, align 8
  store i64 %157, i64* %2, align 8
  br label %158

158:                                              ; preds = %156, %155
  %159 = load i64, i64* %2, align 8
  ret i64 %159
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i64) #1

declare dso_local i32 @MINOR(i64) #1

declare dso_local i64 @new_decode_dev(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @blk_lookup_devt(i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
