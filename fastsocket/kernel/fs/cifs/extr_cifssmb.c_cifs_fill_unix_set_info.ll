; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_cifs_fill_unix_set_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_cifs_fill_unix_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cifs_unix_set_info_args = type { i32, i32, i32, i32, i32, i32, i32 }

@NO_CHANGE_64 = common dso_local global i32 0, align 4
@UNIX_FILE = common dso_local global i32 0, align 4
@UNIX_DIR = common dso_local global i32 0, align 4
@UNIX_SYMLINK = common dso_local global i32 0, align 4
@UNIX_CHARDEV = common dso_local global i32 0, align 4
@UNIX_BLOCKDEV = common dso_local global i32 0, align 4
@UNIX_FIFO = common dso_local global i32 0, align 4
@UNIX_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.cifs_unix_set_info_args*)* @cifs_fill_unix_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_fill_unix_set_info(%struct.TYPE_3__* %0, %struct.cifs_unix_set_info_args* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.cifs_unix_set_info_args*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.cifs_unix_set_info_args* %1, %struct.cifs_unix_set_info_args** %4, align 8
  %6 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %7 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @NO_CHANGE_64, align 4
  %10 = call i8* @cpu_to_le64(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 10
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @NO_CHANGE_64, align 4
  %14 = call i8* @cpu_to_le64(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 9
  store i8* %14, i8** %16, align 8
  %17 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %18 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le64(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %24 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le64(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %30 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le64(i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %36 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le64(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %42 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le64(i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %48 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MAJOR(i32 %49)
  %51 = call i8* @cpu_to_le64(i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %55 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MINOR(i32 %56)
  %58 = call i8* @cpu_to_le64(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @cpu_to_le64(i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @S_ISREG(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %2
  %69 = load i32, i32* @UNIX_FILE, align 4
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %133

73:                                               ; preds = %2
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @S_ISDIR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @UNIX_DIR, align 4
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %132

82:                                               ; preds = %73
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @S_ISLNK(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @UNIX_SYMLINK, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %131

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @S_ISCHR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* @UNIX_CHARDEV, align 4
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %130

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @S_ISBLK(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* @UNIX_BLOCKDEV, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %129

109:                                              ; preds = %100
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @S_ISFIFO(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, i32* @UNIX_FIFO, align 4
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %128

118:                                              ; preds = %109
  %119 = load i32, i32* %5, align 4
  %120 = call i64 @S_ISSOCK(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* @UNIX_SOCKET, align 4
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127, %113
  br label %129

129:                                              ; preds = %128, %104
  br label %130

130:                                              ; preds = %129, %95
  br label %131

131:                                              ; preds = %130, %86
  br label %132

132:                                              ; preds = %131, %77
  br label %133

133:                                              ; preds = %132, %68
  ret void
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
