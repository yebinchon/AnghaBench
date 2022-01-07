; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_open_backing_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_open_backing_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.lun = type { i32, i32, i32, %struct.file* }
%struct.file = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to open backing file: %s\0A\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid file type: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"file not readable: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to find file size: %s\0A\00", align 1
@mod_data = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"file too big: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"using only first %d blocks\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"file too small: %s\0A\00", align 1
@ETOOSMALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"open backing file: %s\0A\00", align 1
@current = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lun*, i8*)* @open_backing_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_backing_file(%struct.lun* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lun*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lun* %0, %struct.lun** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.file* null, %struct.file** %7, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %15 = load %struct.lun*, %struct.lun** %4, align 8
  %16 = getelementptr inbounds %struct.lun, %struct.lun* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = load i32, i32* @O_LARGEFILE, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.file* @filp_open(i8* %21, i32 %24, i32 0)
  store %struct.file* %25, %struct.file** %7, align 8
  %26 = load i32, i32* @EROFS, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.file* %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = load i32, i32* @O_LARGEFILE, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.file* @filp_open(i8* %37, i32 %40, i32 0)
  store %struct.file* %41, %struct.file** %7, align 8
  br label %42

42:                                               ; preds = %36, %33
  %43 = load %struct.file*, %struct.file** %7, align 8
  %44 = call i64 @IS_ERR(%struct.file* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.lun*, %struct.lun** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 (%struct.lun*, i8*, ...) @LINFO(%struct.lun* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load %struct.file*, %struct.file** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.file* %50)
  store i32 %51, i32* %3, align 4
  br label %209

52:                                               ; preds = %42
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FMODE_WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %52
  %61 = load %struct.file*, %struct.file** %7, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.file*, %struct.file** %7, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.inode*, %struct.inode** %71, align 8
  store %struct.inode* %72, %struct.inode** %9, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = icmp ne %struct.inode* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @S_ISBLK(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @bdev_read_only(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %82
  br label %104

90:                                               ; preds = %76, %73
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = icmp ne %struct.inode* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @S_ISREG(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %93, %90
  %100 = load %struct.lun*, %struct.lun** %4, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 (%struct.lun*, i8*, ...) @LINFO(%struct.lun* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  br label %202

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %89
  %105 = load %struct.file*, %struct.file** %7, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = icmp ne %struct.TYPE_9__* %107, null
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.file*, %struct.file** %7, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %109
  %117 = load %struct.file*, %struct.file** %7, align 8
  %118 = getelementptr inbounds %struct.file, %struct.file* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %116, %104
  %124 = load %struct.lun*, %struct.lun** %4, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 (%struct.lun*, i8*, ...) @LINFO(%struct.lun* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  br label %202

127:                                              ; preds = %116, %109
  %128 = load %struct.file*, %struct.file** %7, align 8
  %129 = getelementptr inbounds %struct.file, %struct.file* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %127
  %135 = load %struct.file*, %struct.file** %7, align 8
  %136 = getelementptr inbounds %struct.file, %struct.file* %135, i32 0, i32 1
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  store i32 1, i32* %6, align 4
  br label %142

142:                                              ; preds = %141, %134, %127
  %143 = load %struct.inode*, %struct.inode** %9, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @i_size_read(i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load %struct.lun*, %struct.lun** %4, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 (%struct.lun*, i8*, ...) @LINFO(%struct.lun* %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %8, align 4
  br label %202

156:                                              ; preds = %142
  %157 = load i32, i32* %10, align 4
  %158 = ashr i32 %157, 9
  store i32 %158, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mod_data, i32 0, i32 0), align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %156
  %162 = load i32, i32* %11, align 4
  %163 = and i32 %162, -4
  store i32 %163, i32* %11, align 4
  store i32 1200, i32* %12, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp sge i32 %164, 4608000
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  store i32 4607996, i32* %11, align 4
  %167 = load %struct.lun*, %struct.lun** %4, align 8
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 (%struct.lun*, i8*, ...) @LINFO(%struct.lun* %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %168)
  %170 = load %struct.lun*, %struct.lun** %4, align 8
  %171 = load i32, i32* %11, align 4
  %172 = call i32 (%struct.lun*, i8*, ...) @LINFO(%struct.lun* %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %166, %161
  br label %174

174:                                              ; preds = %173, %156
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load %struct.lun*, %struct.lun** %4, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = call i32 (%struct.lun*, i8*, ...) @LINFO(%struct.lun* %179, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %180)
  %182 = load i32, i32* @ETOOSMALL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %8, align 4
  br label %202

184:                                              ; preds = %174
  %185 = load %struct.file*, %struct.file** %7, align 8
  %186 = call i32 @get_file(%struct.file* %185)
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.lun*, %struct.lun** %4, align 8
  %189 = getelementptr inbounds %struct.lun, %struct.lun* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.file*, %struct.file** %7, align 8
  %191 = load %struct.lun*, %struct.lun** %4, align 8
  %192 = getelementptr inbounds %struct.lun, %struct.lun* %191, i32 0, i32 3
  store %struct.file* %190, %struct.file** %192, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.lun*, %struct.lun** %4, align 8
  %195 = getelementptr inbounds %struct.lun, %struct.lun* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.lun*, %struct.lun** %4, align 8
  %198 = getelementptr inbounds %struct.lun, %struct.lun* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.lun*, %struct.lun** %4, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = call i32 @LDBG(%struct.lun* %199, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %200)
  store i32 0, i32* %8, align 4
  br label %202

202:                                              ; preds = %184, %178, %151, %123, %99
  %203 = load %struct.file*, %struct.file** %7, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @filp_close(%struct.file* %203, i32 %206)
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %202, %46
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.file* @filp_open(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @LINFO(%struct.lun*, i8*, ...) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @bdev_read_only(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @LDBG(%struct.lun*, i8*, i8*) #1

declare dso_local i32 @filp_close(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
