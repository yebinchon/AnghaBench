; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_name_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_name_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_name = type { i32, i8*, i32, i8* }

@TIPC_MAX_LINK_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%u.%u.%u%c\00", align 1
@TIPC_MAX_IF_NAME = common dso_local global i32 0, align 4
@tipc_alphabet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.link_name*)* @link_name_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_name_validate(i8* %0, %struct.link_name* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.link_name*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.link_name* %1, %struct.link_name** %5, align 8
  %22 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %32 = call i32 @strncpy(i8* %25, i8* %30, i32 %31)
  %33 = load i32, i32* @TIPC_MAX_LINK_NAME, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %25, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %153

41:                                               ; preds = %2
  store i8* %25, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 58)
  store i8* %43, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %153

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  store i8 0, i8* %47, align 1
  %49 = load i8*, i8** %9, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 45)
  store i8* %50, i8** %10, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %153

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  store i8 0, i8* %54, align 1
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %19, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 58)
  store i8* %63, i8** %11, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %153

66:                                               ; preds = %53
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  store i8 0, i8* %67, align 1
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @sscanf(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14, i32* %15, i8* %12)
  %74 = icmp ne i32 %73, 3
  br i1 %74, label %125, label %75

75:                                               ; preds = %66
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @sscanf(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %17, i32* %18, i8* %12)
  %78 = icmp ne i32 %77, 3
  br i1 %78, label %125, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %80, 255
  br i1 %81, label %125, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  %84 = icmp sgt i32 %83, 4095
  br i1 %84, label %125, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = icmp sgt i32 %86, 4095
  br i1 %87, label %125, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %16, align 4
  %90 = icmp sgt i32 %89, 255
  br i1 %90, label %125, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %17, align 4
  %93 = icmp sgt i32 %92, 4095
  br i1 %93, label %125, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %18, align 4
  %96 = icmp sgt i32 %95, 4095
  br i1 %96, label %125, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %19, align 4
  %99 = icmp sle i32 %98, 1
  br i1 %99, label %125, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @TIPC_MAX_IF_NAME, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %125, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %20, align 4
  %106 = icmp sle i32 %105, 1
  br i1 %106, label %125, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* @TIPC_MAX_IF_NAME, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %125, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* @tipc_alphabet, align 4
  %114 = call i32 @strspn(i8* %112, i32 %113)
  %115 = load i32, i32* %19, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* @tipc_alphabet, align 4
  %121 = call i32 @strspn(i8* %119, i32 %120)
  %122 = load i32, i32* %20, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118, %111, %107, %104, %100, %97, %94, %91, %88, %85, %82, %79, %75, %66
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %153

126:                                              ; preds = %118
  %127 = load %struct.link_name*, %struct.link_name** %5, align 8
  %128 = icmp ne %struct.link_name* %127, null
  br i1 %128, label %129, label %152

129:                                              ; preds = %126
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i8* @tipc_addr(i32 %130, i32 %131, i32 %132)
  %134 = load %struct.link_name*, %struct.link_name** %5, align 8
  %135 = getelementptr inbounds %struct.link_name, %struct.link_name* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.link_name*, %struct.link_name** %5, align 8
  %137 = getelementptr inbounds %struct.link_name, %struct.link_name* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @strcpy(i32 %138, i8* %139)
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %18, align 4
  %144 = call i8* @tipc_addr(i32 %141, i32 %142, i32 %143)
  %145 = load %struct.link_name*, %struct.link_name** %5, align 8
  %146 = getelementptr inbounds %struct.link_name, %struct.link_name* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.link_name*, %struct.link_name** %5, align 8
  %148 = getelementptr inbounds %struct.link_name, %struct.link_name* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @strcpy(i32 %149, i8* %150)
  br label %152

152:                                              ; preds = %129, %126
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %153

153:                                              ; preds = %152, %125, %65, %52, %45, %40
  %154 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i8*) #2

declare dso_local i32 @strspn(i8*, i32) #2

declare dso_local i8* @tipc_addr(i32, i32, i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
